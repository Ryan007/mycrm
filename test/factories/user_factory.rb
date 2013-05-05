# encoding: utf-8

FactoryGirl.define do
  factory :admin, :class => User do
    username '王超'
    email 'test@xsudo.com'
    password '1q2w3e4r'
    password_confirmation '1q2w3e4r' 
    #encrypted_password 'e577361844acf87e29f4990b142dba38d59c9391e5cbb25092ad9b5f1a3fc0d6bf05f3b08be5bbfd5aa4aa86b2d7caa89edc1f52fd3acb076b360acd0e720a11'
    #admin true
    #sign_in_count 1
    #password_salt 'tQPboEMXUtSCqvNqVuVS'
    confirmed_at '2012-03-10 11:45:32'
    confirmation_sent_at '2012-03-10 11:45:07'
    created_at '2012-03-10 11:45:07'
    updated_at '2012-03-10 11:45:32'
  end

  factory :channel_admin, :class => User do
    username '渠道管理员a'
    email 'channel_admin_a@xiaoma.com'
    password '1q2w3e4r'
    password_confirmation '1q2w3e4r' 
    #encrypted_password 'e577361844acf87e29f4990b142dba38d59c9391e5cbb25092ad9b5f1a3fc0d6bf05f3b08be5bbfd5aa4aa86b2d7caa89edc1f52fd3acb076b360acd0e720a11'
    #admin true
    #sign_in_count 1
    #password_salt 'tQPboEMXUtSCqvNqVuVS'
    confirmed_at '2012-03-10 11:45:32'
    confirmation_sent_at '2012-03-10 11:45:07'
    created_at '2012-03-10 11:45:07'
    updated_at '2012-03-10 11:45:32'
  end
end