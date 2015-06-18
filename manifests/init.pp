class profiles {
include profiles::nginx::nginx
inlcude profiles::psexercise
profiles::jenkins::jenkins
profiles::jenkins::master
profiles::jenkins::slave
}
