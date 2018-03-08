pragma solidity ^0.4.0;

contract amttransfer
{
    string public  name="sabrin";
    string  public symbol="$";
    uint public totalSupply=10000;
    

    mapping(address=>uint)public balances;
    
    function transfer(address to,uint value)public
    { 
        balances[msg.sender]=balances[msg.sender]-(value);
        balances[to] =balances[to]+(value);
    
    }
      function mint(uint amount) public  view returns (bool)
        {
         totalSupply = totalSupply+amount;
         require(amount<=totalSupply);
         if(amount<0){
             return(true);
        }
        else
        {
            return(false);
        }
        }
}