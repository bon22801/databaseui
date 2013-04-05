<<<<<<< HEAD
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

ActiveRecord::Schema.define(:version => 20130926042526) do

  create_table "author_cites", :force => true do |t|
    t.integer  "author_id"
    t.integer  "cite_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "authors", :force => true do |t|
    t.string   "first_name", :default => "", :null => false
    t.string   "last_name",  :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "citations", :force => true do |t|
    t.string   "title",        :default => "",    :null => false
    t.string   "document"
    t.integer  "year",                            :null => false
    t.text     "abstract"
    t.string   "format"
    t.string   "format_title"
    t.string   "publisher"
    t.integer  "number"
    t.integer  "volume"
    t.string   "pages"
    t.boolean  "closed",       :default => false, :null => false
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "competition_interaction_observations", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "competition_interaction_id"
    t.integer  "location_id"
    t.string   "observation_type"
    t.string   "competition_type"
    t.text     "comment"
    t.string   "datum",                      :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "competition_interactions", :force => true do |t|
    t.integer  "stage_1_id", :null => false
    t.integer  "stage_2_id", :null => false
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facilitation_interaction_observations", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "facilitation_interaction_id"
    t.integer  "location_id"
    t.string   "observation_type"
    t.string   "facilitation_type"
    t.text     "comment"
    t.string   "datum",                       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "facilitation_interactions", :force => true do |t|
    t.integer  "stage_1_id", :null => false
    t.integer  "stage_2_id", :null => false
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "functional_groups", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "location_data", :force => true do |t|
    t.float    "latitude",    :null => false
    t.float    "longitude",   :null => false
    t.integer  "location_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "parent"
    t.integer  "active"
    t.integer  "visible"
    t.integer  "zoom_min"
    t.integer  "zoom_max"
    t.integer  "z_index"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "node_max_ages", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "node_id"
    t.float    "max_age",                     :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "node_ranges", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "node_id"
    t.integer  "location_n_id",                 :null => false
    t.integer  "location_s_id",                 :null => false
    t.text     "comment"
    t.string   "datum",         :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "nodes", :force => true do |t|
    t.integer  "itis_id"
    t.integer  "non_itis_id"
    t.string   "working_name",        :default => "", :null => false
    t.integer  "functional_group_id"
    t.string   "native_status"
    t.boolean  "is_assemblage",                       :null => false
    t.integer  "user_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "non_itis", :force => true do |t|
    t.integer  "parent_id",                         :null => false
    t.string   "latin_name",        :default => "", :null => false
    t.string   "taxonomy_level"
    t.boolean  "parent_id_is_itis",                 :null => false
    t.text     "info"
    t.integer  "user_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "parasitic_interaction_observations", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "parasitic_interaction_id"
    t.integer  "location_id"
    t.string   "endo_ecto"
    t.string   "lethality"
    t.float    "prevalence"
    t.float    "intensity"
    t.string   "parasite_type"
    t.string   "observation_type"
    t.text     "comment"
    t.string   "datum",                    :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "parasitic_interactions", :force => true do |t|
    t.integer  "stage_1_id", :null => false
    t.integer  "stage_2_id", :null => false
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "stage_biomass_changes", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "biomass_change",                 :null => false
    t.text     "comment"
    t.string   "datum",          :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "stage_biomass_densities", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "biomass_density",                 :null => false
    t.text     "comment"
    t.string   "datum",           :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "stage_consum_biomass_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "consum_biomass_ratio",                 :null => false
    t.text     "comment"
    t.string   "datum",                :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "stage_consume_biomass_ratios", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.decimal  "consume_biomass_ratio", :precision => 10, :scale => 0
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "stage_consumer_strategies", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "consumer_strategy"
    t.text     "comment"
    t.string   "datum",             :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "stage_drymasses", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "drymass",                     :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_durations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "duration",                    :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_fecundities", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "fecundity",   :default => "", :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_habitat_descriptors", :force => true do |t|
    t.string   "descriptor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "stage_habitats", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "habitat"
    t.text     "comment"
    t.string   "datum",      :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stage_length_fecundities", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "length_fecundity"
    t.float    "a",                :default => 0.0, :null => false
    t.float    "b",                :default => 0.0, :null => false
    t.text     "comment"
    t.string   "datum",            :default => "",  :null => false
    t.integer  "user_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "stage_length_weights", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "length_weight"
    t.float    "a",             :default => 0.0, :null => false
    t.float    "b",             :default => 0.0, :null => false
    t.text     "comment"
    t.string   "datum",         :default => "",  :null => false
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "stage_lengths", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "length",                      :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_lifestyles", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "lifestyle"
    t.text     "comment"
    t.string   "datum",      :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stage_masses", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "mass",                        :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_max_depths", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "max_depth",                   :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_mobilities", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "mobility"
    t.text     "comment"
    t.string   "datum",      :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stage_populations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "population",                  :null => false
    t.text     "comment"
    t.string   "datum",       :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "stage_prod_biomass_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "prod_biomass_ratio",                 :null => false
    t.text     "comment"
    t.string   "datum",              :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "stage_prod_consum_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "prod_consum_ratio",                 :null => false
    t.text     "comment"
    t.string   "datum",             :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "stage_reproductive_strategies", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "reproductive_strategy"
    t.text     "comment"
    t.string   "datum",                 :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "stage_residencies", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "stage_id"
    t.string   "residency"
    t.text     "comment"
    t.string   "datum",      :default => "", :null => false
    t.string   "user_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stage_residency_times", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "residency_time",                 :null => false
    t.text     "comment"
    t.string   "datum",          :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "stage_unassimilated_consum_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "unassimilated_consum_ratio",                 :null => false
    t.text     "comment"
    t.string   "datum",                      :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "stages", :force => true do |t|
    t.integer  "node_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trophic_interaction_observations", :force => true do |t|
    t.integer  "cite_id"
    t.integer  "trophic_interaction_id"
    t.integer  "location_id"
    t.string   "lethality"
    t.string   "structures_consumed"
    t.float    "percentage_consumed"
    t.float    "percentage_diet"
    t.string   "percentage_diet_by"
    t.string   "prefernce"
    t.string   "observation_type"
    t.text     "comment"
    t.string   "datum",                  :default => "", :null => false
    t.integer  "user_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "trophic_interactions", :force => true do |t|
    t.integer  "stage_1_id", :null => false
    t.integer  "stage_2_id", :null => false
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "role"
    t.boolean  "approved",               :default => false, :null => false
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
  end

  add_index "users", ["approved"], :name => "index_users_on_approved"
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
=======
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

ActiveRecord::Schema.define(:version => 2013040400045) do

  create_table "author_cites", :force => true do |t|
    t.integer  "author_id"
    t.integer  "cite_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "authors", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "citations", :force => true do |t|
    t.string   "title"
    t.string   "document"
    t.integer  "year"
    t.text     "abstract"
    t.string   "format"
    t.string   "format_title"
    t.string   "publisher"
    t.integer  "number"
    t.integer  "volume"
    t.string   "pages"
    t.boolean  "closed"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "competition_interaction_observations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "competition_interaction_id"
    t.integer  "location_id"
    t.string   "observation_type"
    t.string   "competition_type"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "competition_interactions", :force => true do |t|
    t.integer  "stage_1_id"
    t.integer  "stage_2_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facilitation_interaction_observations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "facilitation_interaction_id"
    t.integer  "location_id"
    t.string   "observation_type"
    t.string   "facilitation_type"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "facilitation_interactions", :force => true do |t|
    t.integer  "stage_1_id"
    t.integer  "stage_2_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "functional_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "location_data", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "location_id"
    t.string   "name"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.integer  "left"
    t.integer  "right"
    t.integer  "parent"
    t.integer  "active"
    t.integer  "visible"
    t.integer  "zoom_min"
    t.integer  "zoom_max"
    t.integer  "z_index"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "node_max_ages", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "node_id"
    t.float    "max_age"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "node_ranges", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "node_id"
    t.integer  "location_n_id"
    t.integer  "location_s_id"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "nodes", :force => true do |t|
    t.integer  "itis_id"
    t.integer  "non_itis_id"
    t.string   "working_name"
    t.integer  "functional_group_id"
    t.string   "native_status"
    t.boolean  "is_assemblage"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "non_itis", :force => true do |t|
    t.integer  "parent_id"
    t.string   "latin_name"
    t.string   "taxonomy_level"
    t.boolean  "parent_id_is_itis"
    t.text     "info"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "parasitic_interaction_observations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "parasitic_interaction_id"
    t.integer  "location_id"
    t.string   "endo_ecto"
    t.string   "lethality"
    t.float    "prevalence"
    t.float    "intensity"
    t.string   "parasite_type"
    t.string   "observation_type"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "parasitic_interactions", :force => true do |t|
    t.integer  "stage_1_id"
    t.integer  "stage_2_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "user_id"
    t.boolean  "public"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "stage_biomass_changes", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "biomass_change"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "stage_biomass_densities", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "biomass_density"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "stage_consum_biomass_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.decimal  "consume_biomass_ratio", :precision => 10, :scale => 0
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  create_table "stage_consumer_strategies", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "consumer_strategy"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "stage_drymasses", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "drymass"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_durations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "duration"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_fecundities", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "fecundity"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_habitat_descriptors", :force => true do |t|
    t.string   "descriptor"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stage_habitats", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "habitat"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_length_fecundities", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "length_fecundity"
    t.decimal  "a",                :precision => 10, :scale => 0
    t.decimal  "b",                :precision => 10, :scale => 0
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "stage_length_weights", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "length_weight"
    t.decimal  "a",             :precision => 10, :scale => 0
    t.decimal  "b",             :precision => 10, :scale => 0
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "stage_lengths", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "length"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_lifestyles", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "lifestyle"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_masses", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "mass"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_max_depths", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "max_depth"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_mobilities", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "mobility"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_populations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "population"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_prod_biomass_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "prod_biomass_ratio"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "stage_prod_consum_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "prod_consum_ratio"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "stage_reproductive_strategies", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "reproductive_strategy"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "stage_residencies", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.string   "residency"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "stage_residency_times", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "residency_time"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "stage_unassimilated_consum_ratios", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "stage_id"
    t.float    "unassimilated_consum_ratio"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "stages", :force => true do |t|
    t.integer  "node_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trophic_interaction_observations", :force => true do |t|
    t.integer  "citation_id"
    t.integer  "trophic_interaction_id"
    t.integer  "location_id"
    t.string   "lethality"
    t.string   "structures_consumed"
    t.decimal  "percentage_consumed",    :precision => 10, :scale => 0
    t.decimal  "percentage_diet",        :precision => 10, :scale => 0
    t.string   "percentage_diet_by"
    t.string   "prefernce"
    t.string   "observation_type"
    t.text     "comment"
    t.string   "datum"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  create_table "trophic_interactions", :force => true do |t|
    t.integer  "stage_1_id"
    t.integer  "stage_2_id"
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "mod"
    t.boolean  "approved"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "firstname",              :default => "",     :null => false
    t.string   "lastname",               :default => "",     :null => false
    t.string   "username",               :default => "",     :null => false
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "approved",               :default => false,  :null => false
    t.datetime "remember_created_at"
    t.string   "role",                   :default => "User", :null => false
    t.integer  "project_id",                                 :null => false
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
>>>>>>> upstream/umass_branch
