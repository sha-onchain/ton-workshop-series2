import "@stdlib/deploy";
message SetValue {
    data: Int as uint64;
}
contract ValueKeeper with Deployable {
    storedData: Int as uint64;
    init() {
        self.storedData = 0;
    }
    receive(msg: SetValue) {
        self.storedData = msg.data;
    }
    get fun retrieveData(): Int {
        return self.storedData;
    }
}
