require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany.with_options(searchable: false),
    id: Field::Number.with_options(searchable: false),
    email: Field::String.with_options(searchable: true),
    password: Field::String.with_options(searchable: false),
    sign_in_count: Field::Number.with_options(searchable: false),
    current_sign_in_at: Field::DateTime.with_options(searchable: false),
    last_sign_in_at: Field::DateTime.with_options(searchable: false),
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: false),
    last_name: Field::String.with_options(searchable: false),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    type: Field::String.with_options(searchable: false),
    phone: Field::String.with_options(searchable: false),
    social_security_number: Field::Number.with_options(searchable: true),
    company: Field::String.with_options(searchable: true),
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :posts,
    :id,
    :email,
    :social_security_number,
    :company,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :posts,
    :id,
    :email,
    :phone,
    :social_security_number,
    :company,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :first_name,
    :last_name,
    :created_at,
    :updated_at,
    :type,
  ].freeze

  FORM_ATTRIBUTES = [
    :email,
    :password,
    :first_name,
    :last_name,
    :type,
    :phone,
    :social_security_number,
    :company,
  ].freeze
end
