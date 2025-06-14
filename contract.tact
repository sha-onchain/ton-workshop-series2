import "@stdlib/deploy";
message StoreMyNumber {
    myNumber: Int as uint64;
}
contract MyValueHolder with Deployable {
    currentMyValue: Int as uint64;
    init() {
        self.currentMyValue = 0;
    }
    receive(msg: StoreMyNumber) {
        self.currentMyValue = msg.myNumber;
    }
    get fun retrieveMyValue(): Int {
        return self.currentMyValue;
    }
}
