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

ActiveRecord::Schema.define(:version => 20160714194133) do

  create_table "about", :force => true do |t|
    t.string "title",       :limit => 45,  :null => false
    t.string "description", :limit => 455, :null => false
  end

  create_table "abouts", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ar_internal_metadata", :primary_key => "key", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "description"
    t.integer  "order",                      :default => 0,    :null => false
    t.boolean  "active",                     :default => true, :null => false
    t.boolean  "published",                  :default => true, :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "image_article_file_name"
    t.string   "image_article_content_type"
    t.integer  "image_article_file_size"
    t.datetime "image_article_updated_at"
  end

  create_table "businesses", :force => true do |t|
    t.text     "description"
    t.text     "quote"
    t.text     "mission"
    t.text     "view"
    t.text     "values"
    t.boolean  "published",                   :default => true, :null => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "image_business_file_name"
    t.string   "image_business_content_type"
    t.integer  "image_business_file_size"
    t.datetime "image_business_updated_at"
    t.string   "quote_author"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "active",                      :default => true, :null => false
    t.boolean  "published",                   :default => true, :null => false
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "image_category_file_name"
    t.string   "image_category_content_type"
    t.integer  "image_category_file_size"
    t.datetime "image_category_updated_at"
    t.integer  "father_id"
    t.boolean  "highlighted"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "business"
    t.text     "message"
    t.boolean  "published",  :default => true, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.boolean  "active",     :default => true, :null => false
  end

  create_table "highlights", :force => true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.datetime "publication_start"
    t.datetime "publication_stop"
    t.integer  "order",                         :default => 0,    :null => false
    t.boolean  "active",                        :default => true, :null => false
    t.boolean  "published",                     :default => true, :null => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.string   "image_highlight_file_name"
    t.string   "image_highlight_content_type"
    t.integer  "image_highlight_file_size"
    t.datetime "image_highlight_updated_at"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "thumbnail_shadow_file_name"
    t.string   "thumbnail_shadow_content_type"
    t.integer  "thumbnail_shadow_file_size"
    t.datetime "thumbnail_shadow_updated_at"
    t.string   "link"
  end

  create_table "images", :force => true do |t|
    t.string   "alt",               :default => ""
    t.string   "hint",              :default => ""
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.boolean  "active",                  :default => true, :null => false
    t.boolean  "published",               :default => true, :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "image_item_file_name"
    t.string   "image_item_content_type"
    t.integer  "image_item_file_size"
    t.datetime "image_item_updated_at"
  end

  create_table "product_images", :force => true do |t|
    t.string   "title"
    t.integer  "order",                      :default => 1,    :null => false
    t.boolean  "active",                     :default => true, :null => false
    t.boolean  "published",                  :default => true, :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "image_product_file_name"
    t.string   "image_product_content_type"
    t.integer  "image_product_file_size"
    t.datetime "image_product_updated_at"
    t.integer  "product_id"
  end

  create_table "product_informations", :force => true do |t|
    t.string   "attribute_title"
    t.string   "value"
    t.boolean  "active",          :default => true, :null => false
    t.boolean  "published",       :default => true, :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "product_id"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "active",      :default => true, :null => false
    t.boolean  "published",   :default => true, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "brand"
    t.string   "style"
    t.string   "code"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",              :limit => 40
    t.string   "authorizable_type", :limit => 40
    t.integer  "authorizable_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "subcategories", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.text     "description"
    t.boolean  "active",      :default => true, :null => false
    t.boolean  "published",   :default => true, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                              :null => false
    t.string   "last_name"
    t.string   "email",                             :null => false
    t.string   "crypted_password",                  :null => false
    t.string   "password_salt",                     :null => false
    t.string   "persistence_token",                 :null => false
    t.string   "perishable_token",                  :null => false
    t.integer  "login_count",        :default => 0, :null => false
    t.integer  "failed_login_count", :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

end
