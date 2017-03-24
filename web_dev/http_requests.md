9.1 Release 0

*What are some common HTTP status codes?
	*1xx Informational responses
		*100 Continue
		*101 Switching Protocols
		*102 Processing
	*2xx Success
		*200 OK
		*201 Created
		*202 Accepted

*What is the difference between a GET request and a POST request? When might each be used?
	*GET request - Requests data from a specified resource
		*Can be cached
    	*Remain in the browser history
    	*Can be bookmarked
    	*Should never be used when dealing with sensitive data
    	*Have length restrictions
    	*Should be used only to retrieve data

	*POST request - Submits data to be processed to a specified resource
		*Are never cached
    	*Do not remain in the browser history
    	*Cannot be bookmarked
    	*Have no restrictions on data length


*Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	*An HTTP cookie (also called web cookie, Internet cookie, browser cookie or simply cookie) is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.