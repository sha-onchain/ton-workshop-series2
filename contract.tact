import "@stdlib/deploy";
message SetStoredData {
    dataToSave: Int as uint64;
}
contract NumericDataStore with Deployable {
    currentData: Int as uint64;
    init() {
        self.currentData = 0;
    }
    receive(msg: SetStoredData) {
        self.currentData = msg.dataToSave;
    }
    get fun getMyData(): Int {
        return self.currentData;
    }
}
