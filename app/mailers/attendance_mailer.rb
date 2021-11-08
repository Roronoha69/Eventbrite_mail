class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@monsite.com'
  
  def user_join_event(attendance)
    @attendance = attendance
    @attendance_user = User.find(@attendance.user_id)
    @attendance_event = @attendance.event
    @admin = User.find(@attendance.event.admin_id)
    @url  = 'https://git.heroku.com/eventbritedes100codes.git'
    mail(to: @admin.email, subject: "Un utilisateur à rejoint l'évenement !")
    

  end

end


  