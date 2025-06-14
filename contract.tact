import "@stdlib/deploy";
message SetData {
    value: Int as uint64;
}
contract NumericStore with Deployable {
    currentValue: Int as uint64;
    init() {
        self.currentValue = 0;
    }
    receive(msg: SetData) {
        self.currentValue = msg.value;
    }
    get fun getValue(): Int {
        return self.currentValue;
    }
}
