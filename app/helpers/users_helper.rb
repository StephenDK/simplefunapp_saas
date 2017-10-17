module UsersHelper


    def system_icon
       if @user.profile.system == "PC"
           "<i class='fa fa-keyboard-o'></i>".html_safe
       elsif @user.profile.system == "Mac"
            "<i class='fa fa-laptop'></i>".html_safe
       else
           "<i class='fa fa-gamepad'></i>".html_safe
       end
    end     
end