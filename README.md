# README

subjects
  name :string
  position :integer
  visible :boolean

pages
  subject_id index?
  name :string
  permalink :integer (I'm pretty sure this should really be :string) index?
  position :integer
  visible :boolean

sections
  page_id index?
  name :string
  position :integer
  visible :boolean
  content_type :string
  content :text














This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
