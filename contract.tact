import "@stdlib/deploy";

message ChangeValue {
    valueToStore: Int as uint64;
}

contract DataStorage with Deployable {

    currentStoredValue: Int as uint64;

    init() {
        self.currentStoredValue = 0;
    }

    receive(msg: ChangeValue) {
        self.currentStoredValue = msg.valueToStore;
    }

    get fun getStoredValue(): Int {
        return self.currentStoredValue;
    }
}
