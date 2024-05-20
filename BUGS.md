#1) When a post is destroyed it's comments still exist in the database.  How should we go about fixing this?

#2) A malicious user was able to post a rating with 6 stars.  How did this happen and how can we prevent it?

#3) A normal user reports they were able to make two posts with the same Title.  We already enforce uniqueness on the Post model.  How did this happen?  How can we prevent it?

#4) A penetration tester injected javascript onto our page.
