pragma solidity ^0.5.0;

contract Student{
    string studentName;
    event log(string);
     constructor()public{    //only public or internal but can payable also can use uint values
         emit log("in default constructor");
     }
    function setStudent(string memory _name) public{
       studentName = _name;
    }
    function getStudent() public view returns (string memory){
      return studentName;
    }
}
 contract client{
     function creatObj(string memory name) public returns(string memory, address ){
         Student st = new Student();
         st.setStudent(name);
         address a = address(st);
         return (st.getStudent(),a);
     }
     function getObj(address ad) public view returns(string memory){
         Student st =Student(ad);
         return st.getStudent();
     }
     
     
     
 }


