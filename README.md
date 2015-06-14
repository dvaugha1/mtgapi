## MTGAPI
#### What is this for?
Through this API, you gain access to a database of Magic: The Gathering cards and at some point, their images.  As a registered user, you will be able to add cards as well as images of the cards.  I will be working to expand this database as free time allows.

You will not have to be registered to search for a card, view the master list, or view the information for a single card.

## Users

### User registration
#### /users POST
###### Required params:
* user {email: email@email.com, password: password}

###### Returns:
{
	"user": {
		"email": "email@email.com",
		"authentication_token": "sJiDHgfndAeoHS_L33fn"
	}
}

### User sign in
#### /users/sign_in POST
###### Required params:
* user {email: email@email.com, password: password}

###### Returns:
{
	"user": {
		"email": "email@email.com",
		"authentication_token": "sJiDHgfndAeoHS_L33fn"
	}
}