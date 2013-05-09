namespace :Mycrm do
  desc "init permission for cancan"
  task :init => :environment do
    setup_actions_controllers_db
  end

  def setup_actions_controllers_db

    write_permission("all", "manage", "Everything", "All operations", true)
    
    write_permission("User", "manage", "User admin", "All operations")
    write_permission("User", "read", "User read", "view User")
    write_permission("User", "update", "User update", "update User")
    write_permission("User", "delete", "User delete", "delete User")
    write_permission("User", "create", "User create", "create User")
    write_permission("User", "roles", "read User roles", "read roles")
    write_permission("User", "assign_roles", "update roles", "update User roles")

    write_permission("Role", "manage", "Role admin", "All operations")
    write_permission("Role", "read", "Role read", "view role")
    write_permission("Role", "update", "Role update", "update role")
    write_permission("Role", "delete", "Role delete", "delete role")
    write_permission("Role", "create", "Role create", "create role")
    write_permission("Role", "permissions", "read role permission", "read permission")
    write_permission("Role", "assign_permissions", "update permission", "update role permissions")

    write_permission("Permission", "manage", "Permission admin", "All operations")
    write_permission("Permission", "read", "Permission read", "view Permission")
    write_permission("Permission", "update", "Permission update", "update Permission")
    write_permission("Permission", "delete", "Permission delete", "delete Permission")
    write_permission("Permission", "create", "Permission create", "create Permission")

    write_permission("Info", "manage", "Info admin", "All operations")
    write_permission("Info", "read", "Info read", "view Info")
    write_permission("Info", "update", "Info update", "update Info")
    write_permission("Info", "delete", "Info delete", "delete Info")
    write_permission("Info", "create", "Info create", "create Info")
    write_permission("Info", "invit_index", "Info invit_index", "show Invation search")
    write_permission("Info", "invit_search", "Info invit_search", "show Invation search result")
    write_permission("Info", "search_info", "Info search_info", "search info search result")
    write_permission("Info", "cc_my", "Info cc_my", "info for cc")
    write_permission("Info", "cc_add_info", "Info cc_add_info", "cc add info")
    write_permission("Info", "distribute_cc", "Info distribute_cc", "Info distribute_cc")
    write_permission("Info", "save_distribute", "Info save_distribute", "Info save_distribute")
    write_permission("Info", "channel_my", "Info channel_my", "Info channel_my")
    write_permission("Info", "channel_add_info", "Info channel_add_info", "Info channel_add_info")
    write_permission("Info", "callcenter_add_info", "Info callcenter_add_info", "Info callcenter_add_info")
    write_permission("Info", "callcenter_index", "Info callcenter_index", "Info callcenter_index")
    write_permission("Info", "signed", "Info signed", "signed Info")
    write_permission("Info", "get_city", "Info get_city", "get_city Info")
    write_permission("Info", "get_district", "Info get_district", "get_district Info")



    write_permission("ApplyColleage", "manage", "ApplyColleage admin", "All operations")
    write_permission("ApplyColleage", "read", "ApplyColleage read", "view ApplyColleage")
    write_permission("ApplyColleage", "update", "ApplyColleage update", "update ApplyColleage")
    write_permission("ApplyColleage", "delete", "ApplyColleage delete", "delete ApplyColleage")
    write_permission("ApplyColleage", "create", "ApplyColleage create", "create ApplyColleage")

    write_permission("CharacterType", "manage", "CharacterType admin", "All operations")
    write_permission("CharacterType", "read", "CharacterType read", "view CharacterType")
    write_permission("CharacterType", "update", "CharacterType update", "update CharacterType")
    write_permission("CharacterType", "delete", "CharacterType delete", "delete CharacterType")
    write_permission("CharacterType", "create", "CharacterType create", "create CharacterType")

    write_permission("ExamType", "manage", "ExamType admin", "All operations")
    write_permission("ExamType", "read", "ExamType read", "view ExamType")
    write_permission("ExamType", "update", "ExamType update", "update ExamType")
    write_permission("ExamType", "delete", "ExamType delete", "delete ExamType")
    write_permission("ExamType", "create", "ExamType create", "create ExamType")

    write_permission("Exam", "manage", "Exam admin", "All operations")
    write_permission("Exam", "read", "Exam read", "view Exam")
    write_permission("Exam", "update", "Exam update", "update Exam")
    write_permission("Exam", "delete", "Exam delete", "delete Exam")
    write_permission("Exam", "create", "Exam create", "create Exam")

    write_permission("ExamDetail", "manage", "ExamDetail admin", "All operations")
    write_permission("ExamDetail", "read", "ExamDetail read", "view ExamDetail")
    write_permission("ExamDetail", "update", "ExamDetail update", "update ExamDetail")
    write_permission("ExamDetail", "delete", "ExamDetail delete", "delete ExamDetail")
    write_permission("ExamDetail", "create", "ExamDetail create", "create ExamDetail")

    write_permission("Invation", "manage", "Invation admin", "All operations")
    write_permission("Invation", "read", "Invation read", "view Invation")
    write_permission("Invation", "update", "Invation update", "update Invation")
    write_permission("Invation", "delete", "Invation delete", "delete Invation")
    write_permission("Invation", "create", "Invation create", "create Invation")
    write_permission("Invation", "save_directly", "Invation save_directly", "save_directly Invation")
    write_permission("Invation", "come_directly", "Invation come_directly", "delete come_directly")

    write_permission("Record", "manage", "Record admin", "All operations")
    write_permission("Record", "read", "Record read", "view Record")
    write_permission("Record", "update", "Record update", "update Record")
    write_permission("Record", "delete", "Record delete", "delete Record")
    write_permission("Record", "create", "Record create", "create Record")

    write_permission("SessionType", "manage", "SessionType admin", "All operations")
    write_permission("SessionType", "read", "SessionType read", "view SessionType")
    write_permission("SessionType", "update", "SessionType update", "update SessionType")
    write_permission("SessionType", "delete", "SessionType delete", "delete SessionType")
    write_permission("SessionType", "create", "SessionType create", "create SessionType")

    write_permission("Session", "manage", "Session admin", "All operations")
    write_permission("Session", "read", "Session read", "view Session")
    write_permission("Session", "update", "Session update", "update Session")
    write_permission("Session", "delete", "Session delete", "delete Session")
    write_permission("Session", "create", "Session create", "create Session")

    write_permission("TrainingExperience", "manage", "TrainingExperience admin", "All operations")
    write_permission("TrainingExperience", "read", "TrainingExperience read", "view TrainingExperience")
    write_permission("TrainingExperience", "update", "TrainingExperience update", "update TrainingExperience")
    write_permission("TrainingExperience", "delete", "TrainingExperience delete", "delete TrainingExperience")
    write_permission("TrainingExperience", "create", "TrainingExperience create", "create TrainingExperience")

    write_permission("ChannelCategory", "manage", "ChannelCategory admin", "All operations")
    write_permission("ChannelCategory", "read", "ChannelCategory read", "view ChannelCategory")
    write_permission("ChannelCategory", "update", "ChannelCategory update", "update ChannelCategory")
    write_permission("ChannelCategory", "delete", "ChannelCategory delete", "delete ChannelCategory")
    write_permission("ChannelCategory", "create", "ChannelCategory create", "create ChannelCategory")

    write_permission("ChannelInfo", "manage", "ChannelInfo admin", "All operations")
    write_permission("ChannelInfo", "read", "ChannelInfo read", "view ChannelInfo")
    write_permission("ChannelInfo", "update", "ChannelInfo update", "update ChannelInfo")
    write_permission("ChannelInfo", "delete", "ChannelInfo delete", "delete ChannelInfo")
    write_permission("ChannelInfo", "create", "ChannelInfo create", "create ChannelInfo")

    write_permission("InfoNote", "manage", "InfoNote admin", "All operations")
    write_permission("InfoNote", "read", "InfoNote read", "view InfoNote")
    write_permission("InfoNote", "update", "InfoNote update", "update InfoNote")
    write_permission("InfoNote", "delete", "InfoNote delete", "delete InfoNote")
    write_permission("InfoNote", "create", "InfoNote create", "create InfoNote")

    write_permission("Nssr", "manage", "Nssr admin", "All operations")
    write_permission("Nssr", "read", "Nssr read", "view Nssr")
    write_permission("Nssr", "update", "Nssr update", "update Nssr")
    write_permission("Nssr", "delete", "Nssr delete", "delete Nssr")
    write_permission("Nssr", "create", "Nssr create", "create Nssr")
    write_permission("Nssr", "all", "Nssr all", "all Nssr")

    write_permission("Oscf", "manage", "Oscf admin", "All operations")
    write_permission("Oscf", "read", "Oscf read", "view Oscf")
    write_permission("Oscf", "update", "Oscf update", "update Oscf")
    write_permission("Oscf", "delete", "Oscf delete", "delete Oscf")
    write_permission("Oscf", "create", "Oscf create", "create Oscf")
    write_permission("Oscf", "all", "Oscf all", "all Oscf")

    write_permission("Nsfm", "manage", "Nsfm admin", "All operations")
    write_permission("Nsfm", "read", "Nsfm read", "view Nsfm")
    write_permission("Nsfm", "update", "Nsfm update", "update Nsfm")
    write_permission("Nsfm", "delete", "Nsfm delete", "delete Nsfm")
    write_permission("Nsfm", "create", "Nsfm create", "create Nsfm")
    write_permission("Nsfm", "all", "Nsfm all", "all Nsfm")

    # controllers = Dir.new("#{Rails.root}/app/controllers").entries
    # controllers.each do |controller|
    #   if controller =~ /_controller/
    #     foo_bar = controller.camelize.gsub(".rb","").constantize.new
    #   end
    # end
    # # You can change ApplicationController for a super-class used by your restricted controllers
    # ApplicationController.subclasses.each do |controller|
    #   if controller.respond_to?(:permission)  
    #     clazz, description = controller.permission
    #     write_permission(clazz, "manage", description, "All operations")
    #     controller.action_methods.each do |action|
    #       if action.to_s.index("_callback").nil?
    #         action_desc, cancan_action = eval_cancan_action(action)
    #         write_permission(clazz, cancan_action, description, action_desc)
    #       end
    #     end
    #   end
    # end
    
  end


  def eval_cancan_action(action)
    case action.to_s
    when "index", "show", "search"
      cancan_action = "read"
      action_desc = I18n.t :read
    when "create", "new"
      cancan_action = "create"
      action_desc = I18n.t :create
    when "edit", "update"
      cancan_action = "update"
      action_desc = I18n.t :edit
    when "delete", "destroy"
      cancan_action = "delete"
      action_desc = I18n.t :delete
    else
      cancan_action = action.to_s
      action_desc = "Other: " << cancan_action
    end
    return action_desc, cancan_action
  end

  def write_permission(class_name, cancan_action, name, description, force_id_1 = false)
    permission  = Permission.find(:first, :conditions => ["subject_class = ? and action = ?", class_name, cancan_action]) 
    if not permission
      permission = Permission.new
      permission.id = 1 unless not force_id_1
      permission.subject_class =  class_name
      permission.action = cancan_action
      permission.name = name
      permission.description = description
      permission.save
    else
      permission.name = name
      permission.description = description
      permission.save
    end
  end
end

