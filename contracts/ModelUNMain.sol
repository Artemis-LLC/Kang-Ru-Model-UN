pragma solidity ^0.4.4;

contract ModelUNMain {
	struct delegate {
		address id;
		string name;
	}

	struct Conference {
		address host;
		string name;
		uint cost;
		string[] committees;
		mapping (delegate => bool) attending;
		mapping (delegate => uint) amountPaid;
		mapping (delegate => string) committee;
		uint balance;
	}

	Conference[] conferences;

	function createConference(string name, uint cost, string[] committees)
		retruns (Conference)
	{
		Conferece c = Conference(msg.sender, name, cost);
		conferences.push(c);
		return c;
	}
}