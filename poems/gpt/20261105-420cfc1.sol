// As If Not
contract A {
    uint public a;

    function b() public {
        a = 1;
        revert();
    }
}
