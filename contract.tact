import "@stdlib/deploy";
message SetNumericData {
    inputNumber: Int as uint64;
}
contract ValueVault with Deployable {
    heldValue: Int as uint64;
    init() {
        self.heldValue = 0;
    }
    receive(msg: SetNumericData) {
        self.heldValue = msg.inputNumber;
    }
    get fun getHeldValue(): Int {
        return self.heldValue;
    }
}
