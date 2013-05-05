# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# admin = User.create({ username: 'admin', email: 'admin@xiaoma.com',
#                 password: '1q2w3e4r', password_confirmation: '1q2w3e4r', confirmed_at: '2012-03-10 11:45:32' ,
#                 confirmation_sent_at: '2012-03-10 11:45:07',created_at: '2012-03-10 11:45:07',updated_at: '2012-03-10 11:45:32' })


# superadmin_role = Role.create({
#                 rolename: 'SuperAdmin', roledesc: '最高权限管理员'
#         })

# admin.roles << superadmin_role

# super_permission = Permission.create({
#         name: 'Everything', action: 'manage', subject_class: 'all', description: 'All operations'
#         })

# superadmin_role.permissions << super_permission


# ExamType.create([
# 		{name: 'TOEFL', description: 'TOEFL'},
# 		{name: 'SAT', description: 'SAT'},
# 		{name: 'IELTS', description: 'IELTS'},
# 		{name: 'SSAT', description: 'SSAT'},
# 		{name: 'GER', description: 'GER'},
# 		{name: 'GMAT', description: 'GMAT'}
# 	])
# ChannelCategory.create([
# 		{category_name: '中介', description: '来自中介'},
# 		{category_name: '网络', description: '来自网络'},
# 		{category_name: '学校', description: '来自学校推广'},
# 		{category_name: '地推', description: '来自地面推广'},
# 		{category_name: '传单', description: '来自传单推广'}
# 	])

# CharacterType.create([
# 		{character_name: "温和", description: "性格非常温和"},
# 		{character_name: "豪爽", description: "性格非常豪爽"},
# 		{character_name: "开朗", description: "性格非常开朗"},
# 		{character_name: "坚强", description: "性格非常坚强"},
# 		{character_name: "个性", description: "性格非常个性"}
# 	])

# SessionType.create([
# 		{name: "初次沟通", description: "初次沟通"},
# 		{name: "第二次沟通", description: "第二次沟通"},
# 		{name: "第三次沟通", description: "第三次沟通"}
# 	])

# truncate roles;
# INSERT INTO `roles` (`id`, `rolename`, `roledesc`, `created_at`, `updated_at`) VALUES
# (1, 'SuperAdmin', '最高权限管理员', '2012-09-21 00:16:48', '2012-09-21 00:16:48'),
# (2, 'ChannelAdmin', '渠道管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53'),
# (3, 'CcAdmin', '客户管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53'),
# (4, 'CcmAdmin', '客户经理管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53'),
# (5, 'FrontAdmin', '前台管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53'),
# (6, 'CusomerAdmin', '客服管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53'),
# (7, 'CallCenterAdmin', 'CallCenter管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53'),
# (8, 'ChannelManager', '渠道经理管理员', '2012-09-21 00:17:53', '2012-09-21 00:17:53');