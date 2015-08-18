# [Ghost](https://github.com/TryGhost/Ghost) on [Docker](http://docker.com)

Ghost is a free, open, simple blogging platform. Visit the project's website at <http://ghost.org>, or read the docs on <http://support.ghost.org>.

## Deploying using Docker and docker-compose (Formerly ``Fig``)

To get your own Ghost blog running on Docker, follow this guide



### Things you should know

- After deployment, visit the admin area at `YOURAPPNAME.herokuapp.com/ghost` to set up your blog.

- Your blog will be publicly accessible at `YOURAPPNAME.herokuapp.com`.

- To make changes to your Ghost blog (like adding a theme to the `/content` directory, for instance):


### What do I put in the fields?

- **App name**. Pick a name for your application. Heroku says this field is optional, but it’s easier if you choose a name here, because you need to specify the URL of your blog in the first config field anyway. You can add a custom domain later if you want, but this is the name of the application you’ll see in your Heroku dashboard.

- **S3 configuration**. All the config fields begining with `S3_…` are completely optional, and leaving them blank is totally fine. See the section below on file uploads for details.

### File uploads


- **Configure S3 file storage.** Create an S3 bucket on Amazon AWS, and then specify your `S3_ACCESS_KEY_ID`, `S3_ACCESS_SECRET_KEY`, and `S3_BUCKET_NAME` as environment variables on Heroku’s deployment page. Once your app is up and running, you’ll be able to upload images via the Ghost UI and they’ll be stored in Amazon S3. :sparkles:

- **Disable file uploads.** Leave all the S3-related environment variable fields blank on Heroku’s deployment page and file uploads will be disabled. Ghost will ask you for external URLs instead of allowing images to be uploaded. If you don’t know what S3 is, this is the option you want.

_**ProTip™**: You can start off with file uploads disabled, and specify all your S3 environment variables at a later stage. You aren’t stuck with the decision you make on the original deploy. :grin:_

### How this works

This repository is essentially a minimal web application that specifies [Ghost as a dependency](https://github.com/TryGhost/Ghost/wiki/Using-Ghost-as-an-NPM-module), and makes a deploy button available.

## Problems?
	
	Feel free to contact me at timchunght@gmail.com

## License

Released under the [MIT license](./LICENSE), just like the Ghost project itself.
