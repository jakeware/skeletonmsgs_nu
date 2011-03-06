
(in-package :asdf)

(defsystem "nu_skeletonmsgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
 :roslib-msg
)
  :components ((:file "_package")
    (:file "SkeletonJoint" :depends-on ("_package"))
    (:file "_package_SkeletonJoint" :depends-on ("_package"))
    (:file "Skeletons" :depends-on ("_package"))
    (:file "_package_Skeletons" :depends-on ("_package"))
    (:file "Skeleton" :depends-on ("_package"))
    (:file "_package_Skeleton" :depends-on ("_package"))
    ))
