import "@stdlib/deploy";

message StoreNumber {
    number: Int as uint64;
}

contract TactChallenge with Deployable {

    storedValue: Int as uint64;

    init() {
        self.storedValue = 0;
    }

    receive(msg: StoreNumber) {
        self.storedValue = msg.number;
    }

    get fun storedNumber(): Int {
        return self.storedValue;
    }
}