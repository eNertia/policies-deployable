# Catalyze Policies (Deployable)

![Repo Cover](http://i.imgur.com/D8sq8ex.png)

**Only interested in the Policy content? You can find the markdown pages located in our [policies](https://github.com/catalyzeio/policies) repo.**

Within the interest of our loyal customers we've decided to build a deployable version of our widely popular open source compliance policies. This body of work will provide you with the ability to quickly edit, build, and publish your very own version of our policies.

We encourage contributions and adaption to this project. For guidelines on how to contribute please see the `CONTRIBUTING.md` file.

# Getting Started

[**Check out our in-depth getting started tutorial!**](https://github.com/catalyzeio/policies-deployable/wiki/Getting-Started-Tutorial)

**This section assumes you have a machine running OSX. If you're running windows you can download [RubyInstaller](http://rubyinstaller.org/) to get your local Ruby environment setup.**

Once you have Ruby and RubyGems setup on your local machine you can run the following commands in terminal to get started:

(Before running these commands you should fork this repository so you have your own copy)

```
$ mkdir new-policies
$ cd new-policies
$ git clone https://github.com/USERNAME/policies-deployable.git .
$ bundle install
```

The first two commands are optional. You should create a directory with the appropriate name and place your repository in there. Once you have everything installed without errors you can view the policies by running the following command within terminal:

```
$ rake view_docs
```

You can now open up [`http://localhost:2113`](http://localhost:2113) to view your docs. They should look like this:

![Doc Image](http://i.imgur.com/Jg2vpK7.png)


# Customization

Within the policy docs you will find information that needs to change. These are things like:

- Contact information
- Employee Names
- Company specific information

To help automate this we've defined several variables in the `config.rb` file found in the root of the repo. Within that file you should see the following variables:

```
  # FILL IN YOUR COMPANY INFORMATION HERE
  def company_name
    "Company Name"
  end

  def company_name_phone
    "888-888-8888"
  end

  def company_name_email
    "contact@company.com"
  end

  # FILL IN YOUR SECURITY OFFICER INFORMATION HERE
  def security_officer
    "John Smith, CTO"
  end

  def security_officer_phone
    "111-111-1111"
  end

  def security_officer_email
    "john.s@company.com"
  end

  # FILL IN YOUR PRIVACY OFFICER INFORMATION HERE
  def privacy_officer
    "Jane Doe, CEO"
  end

  def privacy_officer_phone
    "111-111-1111"
  end

  def privacy_officer_email
    "jane.d@company.com"
  end
```

**Note: Changing content within the config.rb file throws an error in the terminal due to a known middleman bug. This requires you to stop `control c` the server and then restart it `rake view_docs`.**

These variables are used throughout the documentation.

#### Style

Beyond changing the content you will also want to upload your own logo and color scheme. To change the logo simply replace the existing `logo.png` file in `/source/assets/img` with your own.

To change the color scheme you only need to change one variable. That's located in `/source/assets/css/variables` and named `$c_brand`. You'll see now that it's defined as `#2098ca` but you should change it to whatever dominant brand color your company uses (**Note: you do not need to run any Sass compilation to get this to change**).

#### Rake

To help manage these docs we've provided a simple set of Rake tasks. Currently there are only three:

- `rake view_docs`
  - Gives you a local version of the docs
- `rake build_docs`
  - Builds the static assets
- `rake view_static`
  - Gives you a simple web server to view your built assets

# Deployment

To deploy your docs you'll first need a web server running either apache or nginx. If you plan on hosting your docs as a subdirectory to your main website you most likely already have this setup. If your plan is to host them as a subdirectory (like we do: [policy.catalyze.io](https://policy.catalyze.io)) you can use any number of popular web hosting providers.

Once you have all of your customizations made you can run the following rake task to build your static assets:

`rake build_docs`

This will place your files in `/build` directory. To make sure everything is rendering properly before you deploy you can do the following:

```
cd build
rake view_static
```

You can now view your static files locally by visiting [`localhost:8888`](http://localhost:8888).

The static assets located in the build directory are what you want to host.

**Note: You may want to create a directory on your web server, clone your forked repo, and change the build directory within the config file so that you can manage and deploy changes directly on the server.**

We are also currently evaluating the possibility of managing and hosting policies for our customers. If that interests you please send us an email at [hello@catalyze.io](mailto:hello@catalyze.io) with the subject line "Policy Documentation".

### Policies in the wild

[Read about Eligible's success with Catalyze's open source policies!](https://catalyze.io/announcements/catalyze-releases-open-source-policies-and-procedures-to-hasten-healthcare-it-development)

Some of our favorite forks:

- https://github.com/MolecularMatch/policies
- https://github.com/FilamentLabs/PolicyExplorer
- https://github.com/Xodarap/policies
- https://github.com/doxyme/policies
- https://github.com/SelfCareCatalysts/policies
