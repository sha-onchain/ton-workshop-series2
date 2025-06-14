import "@stdlib/deploy";
message DepositValue {
    incomingValue: Int as uint64;
}
contract PermanentStore with Deployable {
    currentStoredData: Int as uint64;
    init() {
        self.currentStoredData = 0;
    }
    receive(msg: DepositValue) {
        self.currentStoredData = msg.incomingValue;
    }
    get fun getPermanentData(): Int {
        return self.currentStoredData;
    }
}
