# Job Application Dashboard API

An API to store records relating to the job application process.

It allows users to CRUD on jobs, communications, contacters, documents, and reminders.

Link to the live application: [https://spwisner.github.io/job-application-dashboard/](https://spwisner.github.io/job-application-dashboard/).

Link to the front end repository: [https://github.com/spwisner/job-application-dashboard](https://github.com/spwisner/job-application-dashboard).

Link to the heroku api: [https://job-app-dashboard.herokuapp.com/](https://job-app-dashboard.herokuapp.com/).

## ERD

The relationship of this api is one to many.  That is, a user can have many jobs, many communications, many documents, many reminders, and many contacts.  By giving each table the fields "job_ref_id" and "job_ref_text", the company_name and id of the job posting can be stored all other tables.  For a visualization of this relationship, view the following:

![alt text](https://cloud.githubusercontent.com/assets/13546265/25693740/fb840778-3078-11e7-92e9-649e89fe5286.png "ERD")

## Dependencies

No additional dependencies were used for the api portion of this project.

## Technologies Used

-   Ruby on Rails
-   Ruby

The database was structured and scaffolded using Ruby on Rails.  Ruby was used in the jobs controller to allow all records associated with a job application (i.e. reminders, contacts, communications, and documents) to be removed when the job is deleted.

## General approach

In order to make the communications, contacts, documents, reminders, and jobs tables independent from each other, a relationships of one to many was established from the user to all other tables.  By including the table columns job_ref_id and job_ref_text in the communications, contacts, documents, and reminders table, a reference to a specific job application can be made.  In all instances, job_ref_id in a table references the id of a record in the jobs table and the job_ref_text references the company name of a record in the jobs table.  This allows users to be flexible in assigning a record to a specific job application.  For instance, if a user creates a general reminder that should not be linked to a specific job application, this is possible because of the independence between tables.

## Limitations
One of the limitations of this api is related to user experience.  Because of the goal of establishing independence for all relationships between tables, a user must always remember to associate a record to a specific job application.  In addition, once a company name is created, it cannot be modified.  Doing so would not register in all other independent tables.  Consequently, this option must not be available on the front end portion of the application.  Future emphasis should be placed on addressing how changing a company name would be registered among all other tables.

## API end-points

| Verb   | URI Pattern            | Controller#Action           |
|--------|------------------------|-----------------------------|
| POST   | `/sign-up`             | `users#signup`              |
| POST   | `/sign-in`             | `users#signin`              |
| DELETE | `/sign-out/:id`        | `users#signout`             |
| PATCH  | `/change-password/:id` | `users#changepw`            |
| GET    | `/jobs`                | `jobs#index`                |
| POST   | `/jobs`                | `jobs#create`               |
| GET    | `/jobs/:id`            | `jobs#show`                 |
| PATCH  | `/jobs/:id`            | `jobs#update`               |
| DELETE | `/jobs/:id`            | `jobs#destroy`              |
| GET    | `/communications`      | `communications#index`      |
| POST   | `/communications`      | `communications#create`     |
| GET    | `/communications/:id`  | `communications#show`       |
| PATCH  | `/communications/:id`  | `communications#update`     |
| DELETE | `/communications/:id`  | `communications#destroy`    |
| GET    | `/contacts`            | `contacts#index`            |
| POST   | `/contacts`            | `contacts#create`           |
| GET    | `/contacts/:id`        | `contacts#show`             |
| PATCH  | `/contacts/:id`        | `contacts#update`           |
| DELETE | `/contacts/:id`        | `contacts#destroy`          |
| GET    | `/documents`           | `documents#index`           |
| POST   | `/documents`           | `documents#create`          |
| GET    | `/documents/:id`       | `documents#show`            |
| PATCH  | `/documents/:id`       | `documents#update`          |
| DELETE | `/documents/:id`       | `documents#destroy`         |
| GET    | `/reminders`           | `reminders#index`           |
| POST   | `/reminders`           | `reminders#create`          |
| GET    | `/reminders/:id`       | `reminders#show`            |
| PATCH  | `/reminders/:id`       | `reminders#update`          |
| DELETE | `/reminders/:id`       | `reminders#destroy`         |

All data returned from API actions is formatted as JSON.

---

## User actions

### signup

The `create` action expects a *POST* of `credentials` identifying a new user to
 create, e.g. using `getFormFields`:

```html
<form>
  <input name="credentials[email]" type="text" value="an@example.email">
  <input name="credentials[password]" type="password" value="an example password">
  <input name="credentials[password_confirmation]" type="password" value="an example password">
</form>

```

or using `JSON`:

```json
{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}
```

The `password_confirmation` field is optional.

If the request is successful, the response will have an HTTP Status of 201,
 Created, and the body will be JSON containing the `id` and `email` of the new
 user, e.g.:

```json
{
  "user": {
    "id": 1,
    "email": "an@example.email"
  }
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be empty.

### signin

The `signin` action expects a *POST* with `credentials` identifying a previously
 registered user, e.g.:

```html
<form>
  <input name="credentials[email]" type="text" value="an@example.email">
  <input name="credentials[password]" type="password" value="an example password">
</form>
```

or:

```json
{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}
```

If the request is successful, the response will have an HTTP Status of 200 OK,
 and the body will be JSON containing the user's `id`, `email`, and the `token`
 used to authenticate other requests, e.g.:

```json
{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "an example authentication token"
  }
}
```

If the request is unsuccessful, the response will have an HTTP Status of 401
 Unauthorized, and the response body will be empty.

### signout

The `signout` actions is a *DELETE* specifying the `id` of the user to sign out.

If the request is successful the response will have an HTTP status of 204 No
 Content.

If the request is unsuccessful, the response will have a status of 401
 Unauthorized.

### changepw

The `changepw` action expects a PATCH of `passwords` specifying the `old` and
 `new`.

If the request is successful the response will have an HTTP status of 204 No
 Content.

If the request is unsuccessful the reponse will have an HTTP status of 400 Bad
 Request.

---

The `sign-out` and `change-password` requests must include a valid HTTP header
 `Authorization: Token token=<token>` or they will be rejected with a status of
 401 Unauthorized.

## Jobs Actions

All jobs action requests must include a valid HTTP header `Authorization: Token token=<token>` or they will be rejected with a status of 401 Unauthorized.

### index

The `index` action is a *GET* that retrieves all the jos associated with a
 user. The response body will contain JSON containing an array of jobs, e.g.:

```json

{
  "jobs":[
    {
      "id":60,
      "title":"Sample Company Web Developer",
      "posting_date":"2017-02-12",
      "post_url":"www.samplewebsite.com",
      "salary":"",
      "responsibility":"Responsibilities: You will help develop the foundational web components and user interface libraries for providing a seamless user experience on the Desktop and over the Cloud. Your work will leverage state-of-the-art web UI technologies to enable building modern Apps and will have high visibility within the organization",
      "requirement":"1+ years front end web development at a high traffic eCommerce or consumer site. •Template driven web site development •Knowledge of java, javascript, jquery, RESTful, JSON, AngularJS, BootStrap and related technologies",
      "deadline":"2017-03-25",
      "job_description":"We are looking for a passionate Web Developer, who is ready to work on the cutting edge of Sample Software solutions. This is an excellent opportunity to become a core member of a rapidly growing software development team",
      "note":"Applied Using Linkedin Easy",
      "company_name":"Sample Company",
      "applied":true,
      "date_applied":"2017-02-018",
      "default_reminder":true,
      "priority_num":1
    },
    {
      "id":60,
      "title":"New Company JavaScript Developer",
      "posting_date":"2017-01-11",
      "post_url":"www.newcompany.com",
      "salary":"$50,000-$80,000",
      "responsibility":"Responsibilities: You will be managing the front end of the company website.",
      "requirement":"Qualifications Expert in CSS, HTML, and JavaScript Solid understanding of jQuery, or a similar JS library Knowledge of performance considerations, especially with respect to browsers Experience with Java (or a similar object-oriented language like C#) ",
      "deadline":"",
      "job_description":"New Company is looking for smart, enthusiastic web developers to take our industry-leading website to the next level.  If you're an experienced engineer who wants to work on a team of similarly talented, driven individuals, then we'd love to hear from you.",
      "note":"",
      "company_name":"New Company",
      "applied":false,
      "date_applied":"",
      "default_reminder":false,
      "priority_num":3
    }
  ]
}

```

If there are no jobs associated with the user, the response body will contain
 an empty jobs array, e.g.:

```json
{
  "jobs": [
  ]
}
```

### create

The `create` action expects a *POST* with an empty body (e.g `''` or `'{}'` if JSON).   A sample create form is below:

```html
<form id="create-job-form">
  <fieldset>
    <div>
      <label>Job Title (required)</label>
      <input name="job[title]" placeholder="Job Title" type="text">
    </div>

    <div>
      <label>Posting Date</label>
      <input name="job[posting_date]" placeholder="Date Posted" type="date">
    </div>

    <div>
      <label>Posting Date</label>
      <input name="job[posting_date]" placeholder="Date Posted" type="date">
    </div>

    <div>
      <label>Job Post Url</label>
      <input name="job[post_url]" placeholder="Post Website Link" type="text">
    </div>

    <div>
      <label>Salary</label>
      <input name="job[salary]" placeholder="Salary" type="text">
    </div>

    <div>
      <label>Job Description</label>
      <input name="job[job_description]" placeholder="Job Description" type="text">
    </div>

    <div>
      <label>Responsibilities</label>
      <input name="job[responsibility]" placeholder="Job Responsibilities" type="text">
    </div>

    <div>
      <label>Requirement</label>
      <input name="job[requirement]" placeholder="Job Requirements" type="text">
    </div>

    <div>
      <label>Deadline</label>
      <input name="job[deadline]" placeholder="Deadline Date" type="date">
    </div>

    <div class="form-group">
      <label>Job Notes</label>
      <input name="job[note]" placeholder="Job Notes" type="text">
    </div>

    <div>
      <label>Application Priority Scale</label>
      <label>1 being the highest priority</label>
      <select name="job[priority_num]">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>

      <div>
        <label>Have you applied to the job?</label>
        <div>
          <span>Check Box for Yes</span>
          <input name="job[applied]" placeholder="Applied" type="checkbox">
        </div>
        <div>
          <input name="job[date_applied]" placeholder="Application Date" type="date">
        </div>
      </div>
    </div>

    <div>
      <input name="submit" type="submit" value="Submit">
    </div>
  </fieldset>
</form>
```
If the request is successful, the response will have an HTTP Status of 201 Created, and the body will contain JSON of the created job, e.g.:

```json

{
  "job": {
    "id":62,
    "title":"Startup Company Developer",
    "posting_date":"2017-02-12",
    "post_url":"www.startupcompany.com",
    "salary":"",
    "responsibility":"Responsibilities: You will help develop the foundational web components and user interface libraries for providing a seamless user experience on the Desktop and over the Cloud. Your work will leverage state-of-the-art web UI technologies to enable building modern Apps and will have high visibility within the organization",
    "requirement":"1+ years front end web development at a high traffic eCommerce or consumer site. •Template driven web site development •Knowledge of java, javascript, jquery, RESTful, JSON, AngularJS, BootStrap and related technologies",
    "deadline":"2017-03-25",
    "job_description":"We are looking for a passionate Web Developer, who is ready to work on the cutting edge of Sample Software solutions. This is an excellent opportunity to become a core member of a rapidly growing software development team",
    "note":"",
    "company_name":"Startup Company",
    "applied":true,
    "date_applied":"2017-02-018",
    "default_reminder":true,
    "priority_num":2
  }
}

```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.

### show

The `show` action is a *GET* specifing the `id` of the job to retrieve.
If the request is successful the status will be 200, OK, and the response body
 will contain JSON for the game requested, e.g.:

```json

{
  "job": {
    "id":62,
    "title":"Startup Company Developer",
    "posting_date":"2017-02-12",
    "post_url":"www.startupcompany.com",
    "salary":"",
    "responsibility":"Responsibilities: You will help develop the foundational web components and user interface libraries for providing a seamless user experience on the Desktop and over the Cloud. Your work will leverage state-of-the-art web UI technologies to enable building modern Apps and will have high visibility within the organization",
    "requirement":"1+ years front end web development at a high traffic eCommerce or consumer site. •Template driven web site development •Knowledge of java, javascript, jquery, RESTful, JSON, AngularJS, BootStrap and related technologies",
    "deadline":"2017-03-25",
    "job_description":"We are looking for a passionate Web Developer, who is ready to work on the cutting edge of Sample Software solutions. This is an excellent opportunity to become a core member of a rapidly growing software development team",
    "note":"",
    "company_name":"Startup Company",
    "applied":true,
    "date_applied":"2017-02-018",
    "default_reminder":true,
    "priority_num":2
  }
}

```

### update

This `update` action expects a *PATCH* with changes to to an existing job,
 e.g.:

```json
{
  "job": {
    "title":"Revised Job Title",
    "salary":"$50,000",
    "company_name":"Startup Company",
    "applied":true,
    "date_applied":"2017-02-18",
    "priority_num":2
  }
}
```

If the request is successful, the response will have an HTTP Status of 200 OK,
 and the body will be JSON containing the modified game, e.g.:

```json
{
  "job": {
    "id":62,
    "title":"Revised Job Title",
    "posting_date":"2017-02-12",
    "post_url":"www.startupcompany.com",
    "salary":"$50,000",
    "responsibility":"Responsibilities: You will help develop the foundational web components and user interface libraries for providing a seamless user experience on the Desktop and over the Cloud. Your work will leverage state-of-the-art web UI technologies to enable building modern Apps and will have high visibility within the organization",
    "requirement":"1+ years front end web development at a high traffic eCommerce or consumer site. •Template driven web site development •Knowledge of java, javascript, jquery, RESTful, JSON, AngularJS, BootStrap and related technologies",
    "deadline":"2017-03-25",
    "job_description":"We are looking for a passionate Web Developer, who is ready to work on the cutting edge of Sample Software solutions. This is an excellent opportunity to become a core member of a rapidly growing software development team",
    "note":"",
    "company_name":"Startup Company",
    "applied":true,
    "date_applied":"2017-02-18",
    "default_reminder":true,
    "priority_num":2
  }
}
```

If the request is unsuccessful, the response will have an HTTP Status of 400 Bad
 Request, and the response body will be JSON describing the errors.

 ### destroy

 This `destroy` action expects a *DELETE* specifying the `id` of the job to delete.

 If the request is successful the response will have an HTTP status of 204 No Content.

 If the request is unsuccessful, the response will have a status of 401 Unauthorized.

 ---

## Communication Actions

This portion is currently under development.

## Contact Actions

This portion is currently under development.

## Document Actions

This portion is currently under development.

## Reminder Actions

This portion is currently under development.
