# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130820174506) do

  create_table "addresses", :force => true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state"
    t.integer  "country"
    t.string   "zip"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.integer  "manager"
    t.string   "phoneNumber"
    t.string   "fax"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state"
    t.integer  "country"
    t.string   "zip"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "fein"
    t.string   "phoneNumber"
    t.string   "fax"
    t.text     "about"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "middleInitial"
    t.string   "email"
    t.string   "sex"
    t.string   "birthDay"
    t.string   "cellPhone"
    t.string   "homePhone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "jobTitle"
    t.date     "hireDate"
    t.string   "ssn"
    t.decimal  "baseSalary"
    t.decimal  "commission"
    t.decimal  "bonus"
    t.integer  "payCycle"
    t.integer  "department"
    t.integer  "branch"
    t.integer  "manager"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "middleInit"
    t.string   "sex"
    t.date     "birthDay"
    t.string   "email"
    t.string   "homePhone"
    t.string   "cellPhone"
    t.integer  "address"
    t.integer  "personable_id"
    t.string   "personable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.string   "category"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reference_data", :force => true do |t|
    t.string   "codeSet"
    t.integer  "codeId"
    t.string   "code"
    t.integer  "sortIndex"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "work_schedules", :force => true do |t|
    t.integer  "employeeId"
    t.date     "date"
    t.datetime "startTime"
    t.datetime "endTime"
    t.datetime "loginTime"
    t.datetime "logoutTime"
    t.boolean  "descrepancy"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
