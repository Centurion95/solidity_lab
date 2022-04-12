// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract ContratoAuto {
    //rc95 11/04/2022 20:58
    uint cantPuerta;
    string color;

    address /*public*/ owner_account;
    mapping (address => uint) /*public*/ balances;
    
    constructor() {
        set_cantPuerta(5);
        set_color("verde");
        owner_account = msg.sender;
    }

    function set_cantPuerta(uint x) public {
        cantPuerta = x;
    }

    function get_cantPuerta() public view returns (uint) {
        return cantPuerta;
    }

    function set_color(string memory x) public {
        color = x;
    }

    function get_color() public view returns (string memory) {
        return color;
    }

    function get_owner_account() public view returns (address) {
        return owner_account;
    }

    function get_owner_account_balance() public view returns (uint) {
        return balances[owner_account];
    }

    function add_owner_account_balance(uint amount) public {
        balances[owner_account] += amount;
    }

    // Can only be called by the contract creator
    function reset_owner_account_balance() public {
        // require(msg.sender == owner_account);
        require(msg.sender == owner_account, "Solo el owner puede resetear!");
        balances[owner_account] = 0;
    }

    function get_current_account() public view returns (address) {
        return msg.sender;
    }

    // Errors allow you to provide information about
    // why an operation failed. They are returned
    // to the caller of the function.
    error error_a_proposito(uint mi_numero, string mi_texto);

    function fallar_a_proposito() public view returns (uint) {
        if (1==1){
            revert error_a_proposito({
                mi_numero: 1,
                mi_texto: "hola mundo"
            });
        }
        

        return cantPuerta;
    }
}
