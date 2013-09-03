Influence
=========
I was part of a team of five engineers working on this app in August 2013. We developed over 10 days, during which I created the "Words Explorer" and "Bill Search" features. I wrote several blog posts about the experience:

* [Influence: Exploring Aaron Swartz's "Watchdog"](http://eastbayjake.wordpress.com/2013/08/14/influence-exploring-aaron-swartzs-watchdog/)
* [So You Want to Write CoffeeScript?](http://eastbayjake.wordpress.com/2013/08/17/so-you-want-to-write-coffeescript/)
* [Influence: Bill View Update](http://eastbayjake.wordpress.com/2013/08/21/influence-bill-view-update-2/)
* [Influence Update: Word Search](http://eastbayjake.wordpress.com/2013/08/24/influence-update-word-search/)
* [The Tragedy of Cut Features](http://eastbayjake.wordpress.com/2013/08/28/the-tragedy-of-cut-features/)

I've ended my role in active development as I seek out full-time software engineering opportunities. Please visit my [website](http://www.eastbayjake.com) or [LinkedIn profile](http://linkedin.com/in/jakemcguire) if you'd like to discuss adding my full-stack web application experience to your team.

Here is a brief demo and display of the features I developed. The deployed app, [Tilden](http://www.tildenapp.com), is available online.

Word Explorer
-------------
Search for the top words used by an individual legislator, or see how often a word or phrase has been used in Congress since 1996.

![alt-text](https://raw.github.com/IdeaHaven/influence/master/screenshots/words1.png "Word Explorer: See Speech Trends")

Bill Search
-----------
View the full text of bills in Congress. Search for bills by issue/word or select from a list of the most recent bills. Comment on your findings in the Disqus comments below each bill.

![alt-text](https://raw.github.com/IdeaHaven/influence/master/screenshots/bills1.png "Bill Search: Find by issue")


About the Stack
===============
Influence is an AngularJS app written in CoffeeScript, with D3 animated charts. It uses a Node.js API server with ActionHero.js and a PostgreSQL database. Test coverage is provided by Travis-CI.

Forking This Project
--------------------
I recommend you fork from the [main Influence repo](https://github.com/ideahaven/influence) where active development will continue to take place. The README in that repo will also contain the full technical details required to get this system up and running.

License and Attribution
=======================
Influence is licensed under the [Affero General Public License](LICENSE), which is like the GPL but *requires* you provide access to the source code for any modified versions that are running publicly (among other things). The [intent](http://www.gnu.org/licenses/why-affero-gpl.html) is to make sure that anyone improving the software makes those improvements available to others, as we have to them.
