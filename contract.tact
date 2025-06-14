import "@stdlib/deploy";
message PutData {
    inputData: Int as uint64;
}
contract SimpleDataStore with Deployable {
    currentSavedData: Int as uint64;
    init() {
        self.currentSavedData = 0;
    }
    receive(msg: PutData) {
        self.currentSavedData = msg.inputData;
    }
    get fun getSavedData(): Int {
        return self.currentSavedData;
    }
}
