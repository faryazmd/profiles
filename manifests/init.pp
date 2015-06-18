class profiles {
include profiles::nginx
include profiles::psexercise
include profiles::jenkins::jenkins
include profiles::jenkins::master
include profiles::jenkins::slave
include profiles::jenkins::proxy
}
