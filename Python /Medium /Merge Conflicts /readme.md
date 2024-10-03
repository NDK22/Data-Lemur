Merge Conflicts
Microsoft Python Interview Question

Imagine you are working on a code version-control system website, similar to GitHub.

You are given a list of pull_requests, and each element within the list represents a range of lines which that were changed in a specific pull request.

Your job is to write a function called has_merge_conflict which returns True or False, depending on if there is or is not any merge conflict. In this case, a merge conflict means two different pull requests are trying to change the same exact lines.

For example, if you were given the input pull_requests = [[5, 10], [15, 40], [25, 50]].

We'd output True because there is a merge conflict: two different pull requests trying to change lines between 25 and 40.

Here's another example: say you had the input pull_requests = [[30, 40], [10, 20], [5, 8]].

You'd return False because there is no merge conflict – none of these pull requests are trying to change the same lines.
