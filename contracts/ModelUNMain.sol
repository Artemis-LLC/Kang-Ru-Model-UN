pragma solidity ^0.4.4;

contract ModelUNMain {
	struct Delegate {
		address id;
		string name;
		string phoneNumber;
		string email;
	}

	struct Committee {
		string name;

	}

	struct Conference {
		address host;
		string name;
		uint cost;
		Committee[] committees;
		mapping (Delegate => bool) isFaculty;
		mapping (Delegate => bool) attending;
		mapping (Delegate => uint) amountPaid;
		mapping (Delegate => Committee) committee;
		uint balance;
	}

	Conference[] conferences;

	function createConference(string name, uint cost) payable
		retruns (Conference)
	{
		Conferece c = Conference(msg.sender, name, cost);
		conferences.push(c);
		return c;
	}
}