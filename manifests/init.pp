class profiles {
include profiles::nginx::nginx
inlcude profiles::psexercise
include profiles::jenkins::jenkins
include profiles::jenkins::master
include profiles::jenkins::slave
}
