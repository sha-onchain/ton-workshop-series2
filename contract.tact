import "@stdlib/deploy";
message UpdateValue {
    newValue: Int as uint64;
}
contract MyNumberStorage with Deployable {
    currentNumber: Int as uint64;
    init() {
        self.currentNumber = 0;
    }
    receive(msg: UpdateValue) {
        self.currentNumber = msg.newValue;
    }
    get fun getMyNumber(): Int {
        return self.currentNumber;
    }
}
