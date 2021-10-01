# Contributing to the Posh-AeriesApi project

First of all, welcome! We're excited that you'd like to contribute. How would you like to help?

* [I'd like to report a bug](#how-to-report-bugs)
* [I'd like someone else to build something](#how-to-request-features)
* [I'd like to build a new feature myself](#how-to-build-features-yourself)

Everyone here is expected to abide by the [Contributor Covenant Code of Conduct](https://github.com/AeriesSoftware/Posh-AeriesApi/blob/CODE_OF_CONDUCT.md).

Do you have a question not answered here? Ask us in the [#Posh-AeriesApi channel](https://aeriesaug.slack.com/messages/posh-aeriesapi) in Slack. We welcome newcomers, and there's always a way you can help.

## How to Report Bugs

Check out the [Github issues list]. Search for what you're interested in - there may already be an issue for it. 

Make sure to search through [closed issues list], too, because we may have already fixed the bug in the development branch. To try the most recent version of the code that we haven't released to the public yet, [download the dev branch version].

If you can't find a similar issue, go ahead and open your own. Include as much detail as you can - what you're seeing now, and what you'd expect to see instead.

## How to Request Features

Open source is community-built software. Anyone is welcome to build things that would help make their job easier.

Open source isn't free development, though. Working on these scripts is hard work.

If you want something, you're going to either need to build it yourself, or convince someone else to devote their free time to your feature request. You can do that by sponsoring development (offering to hire a developer to build it for you), or getting people excited enough that they volunteer to build it for you.

And good news! Lots of people have contributed their code over time. Here's how to get started.

## How to Build Features Yourself

When you're ready to start coding, discuss it with the community. Check the [Github issues list] and the [closed issues list] because folks may have tried it in the past, or the community may have decided it's not a good fit for these tools.

If you can't find it in an existing issue, open a new Github issue for it. Outline what you'd like to do, why you'd like to do it, and optionally, how you'd think about coding it. This just helps make sure other users agree that it's a good idea to add to these tools. Other folks will respond to the idea, and if you get a warm reception, go for it!

After your Github issue has gotten good responses from a couple of volunteers who are willing to test your work, get started by creating a branch of "dev" called `features/<issue number>`. The Github instructions are below - it isn't exactly easy, and we totally understand if you're not up for it. Thing is, we can't take code contributions via text requests - Github makes it way easier for us to compare your work versus the changes other people have made, and merge them all together.

Note that if you're not ready to get started coding in the next week, or if you think you can't finish the feature in the next 30 days, you probably don't want to bother opening an issue. You're only going to feel guilty over not making progress, because we'll keep checking in with you to see how it's going. We don't want to have stale "someday I'll build that" issues in the list - we want to keep the open issues list easy to scan for folks who are trying to troubleshoot bugs and feature requests.

### Code Requirements and Standards

We're not picky at all about style, but a few things to know:

Your code needs to compile & run on PowerShell 5.1 and PowerShell 7.1.x.

### How to Check In Your Code

## Start with the latest on dev

When starting a new feature, I make sure to start with the latest and greatest codebase:

```
git checkout dev
git pull origin dev
```

This reduces complications of dealing with out of date code, and reduces the chances of merge issues.

## Create feature branch

Now create a branch to house the changes required for the new feature.

Here we are using the term 'feature' to mean the Issue number your are addressing. The branch should be named as `features/<issue number>` where <issue number> is the issue ID number assigned by GitHub.

```
git checkout -b features/<issue number>
```

This will create a new branch called `features/<issue number>` and check it out for me. 

```
git status
```

Will show we are on the new branch and ready to work

## Modify code

Now we implement the new feature / bug fix. Work as you would normally, making small incremental changes and checking them into the local feature branch.

Use descriptive comments when adding new changes so that the history of changes is easy to follow. They can still be short and succinct - but clear.

## Push Feature Branch to Remote

Ok, you are done with the implementation. You've checked and double checked the changes, and are ready to have them integrated into the main code base. 

The first step of the review process is to push your feature branch to `origin`.

```
git push origin features/<issue number>
```

This will push your current branch to a new branch on origin with the same name. 

Of course you can do this multiple times during the development process - if you want the peace of mind of having your changes distributed, or you want another set of eyes on it even before the pull request.

## Create Pull Request

With your feature branch on github, navigate to the project on github. On the main page, you should see a new little toolbar that shows your feature branch listed and asks if you want to create a pull request from it. So let's do it!

When creating a pull request, you want to summarize the changes being made for this new feature and give it a descriptive title. 

Please reference existing issues or other PR's by typing # - and then the issue number. A little pop-up should help with picking the right issue number. 

Feel free to add screenshots or other images if there are visual changes associated with your PR. 

Once you have written out the description for the new PR - submit it and sit back for a bit while a teammate reviews. 


[homepage]: http://contributor-covenant.org
[version]: http://contributor-covenant.org/version/2/1/
[Github issues list]:https://github.com/AeriesSoftware/Posh-AeriesApi/issues
[closed issues list]: https://github.com/AeriesSoftware/Posh-AeriesApi/issues?q=is%3Aissue+is%3Aclosed
[download the dev branch version]: https://github.com/AeriesSoftware/Posh-AeriesApi/archive/dev.zip
