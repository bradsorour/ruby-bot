# ruby-bot

A bot/chatterbot is computer program that can hold a conversation with us. Bots are present in a lot of different software and tools these days. The good thing about developing a bot is that it can be as simple or as complex as you like. 

This bot covers some good Ruby techniques.

The bot app includes testing and documentation, as well as using classes and complex data structures. It uses files to store information the bot uses, and looks at how to make the bot available to the general public using HTTP servers and CGI scripts. 

This app also demands lots of string and list-related functions, along with comparison logic. These are all things one is likely to use in a larger development project. As Ruby is a particularly good language for text processing, this app is perfect for demonstrating Ruby’s strengths.

	
The application is composed of four parts:

1. The Bot class, within bot.rb, containing all the bot’s logic and any subclasses.
 
2. The WordPlay library, within wordplay.rb, containing the WordPlay class and extensions to String.
 
3. Basic “client” applications that create bots and allows users to interact with them. You’ll first create a basic keyboard-entry client, but we’ll look at some alternatives later in the chapter.

4. A helper program to generate the bot’s data files easily.

The bot's data includes information about word substitutions to perform during, as well as keywords and phrases that the bot can use in response. The bot's data is kept in a hash.