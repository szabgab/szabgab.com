=head1 Delayed value creation for legacy code
=timestamp 1633337917
=tags legacy



While gradual improvement of a legacy software project usually can give you value almost immediately, even that might take a few weeks or months.




For example, I encountered systems where there was only a single environment.
Used for both development and production.
It is unfortunate and very risky, but this can happen.

In this case you might need to invest some, or a lot of time and energy before you can set up a separate environment and start increasing the speed of development.

If you are already familiar with the system you can continue improving the live version to the point where you can set up separate environments for development,
testing, staging, deployment or whatever separation you find fitting.
In this case you can benefit from the investment much sooner.

However, if you are not familiar with the system and it does not have tests to protect you from accidentally breaking something,
then first you need to make the necessary changes to set up a separate environment for development. Then you need to learn how to release and deploy the software.
After all, previously there was no release and deployment process as the development happened in the production environment.



