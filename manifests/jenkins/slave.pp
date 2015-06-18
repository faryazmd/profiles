class profiles::jenkins::slave {
 masterurl => hiera_array('jenkins::slave::masterurl'),
 ui_user => hiera_array('jenkins::slave::ui_user'),
 ui_pass => hiera_array('jenkins::slave::ui_pass'),
}

