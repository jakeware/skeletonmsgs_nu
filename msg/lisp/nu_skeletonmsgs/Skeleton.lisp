; Auto-generated. Do not edit!


(in-package nu_skeletonmsgs-msg)


;//! \htmlinclude Skeleton.msg.html

(defclass <Skeleton> (ros-message)
  ((userid
    :reader userid-val
    :initarg :userid
    :type integer
    :initform 0)
   (head
    :reader head-val
    :initarg :head
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (neck
    :reader neck-val
    :initarg :neck
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (right_hand
    :reader right_hand-val
    :initarg :right_hand
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (left_hand
    :reader left_hand-val
    :initarg :left_hand
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (right_shoulder
    :reader right_shoulder-val
    :initarg :right_shoulder
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (left_shoulder
    :reader left_shoulder-val
    :initarg :left_shoulder
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (right_elbow
    :reader right_elbow-val
    :initarg :right_elbow
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (left_elbow
    :reader left_elbow-val
    :initarg :left_elbow
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (torso
    :reader torso-val
    :initarg :torso
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (left_hip
    :reader left_hip-val
    :initarg :left_hip
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (right_hip
    :reader right_hip-val
    :initarg :right_hip
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (left_knee
    :reader left_knee-val
    :initarg :left_knee
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (right_knee
    :reader right_knee-val
    :initarg :right_knee
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (left_foot
    :reader left_foot-val
    :initarg :left_foot
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>))
   (right_foot
    :reader right_foot-val
    :initarg :right_foot
    :type nu_skeletonmsgs-msg:<SkeletonJoint>
    :initform (make-instance 'nu_skeletonmsgs-msg:<SkeletonJoint>)))
)
(defmethod serialize ((msg <Skeleton>) ostream)
  "Serializes a message object of type '<Skeleton>"
    (write-byte (ldb (byte 8 0) (slot-value msg 'userid)) ostream)
  (write-byte (ldb (byte 8 8) (slot-value msg 'userid)) ostream)
  (write-byte (ldb (byte 8 16) (slot-value msg 'userid)) ostream)
  (write-byte (ldb (byte 8 24) (slot-value msg 'userid)) ostream)
  (serialize (slot-value msg 'head) ostream)
  (serialize (slot-value msg 'neck) ostream)
  (serialize (slot-value msg 'right_hand) ostream)
  (serialize (slot-value msg 'left_hand) ostream)
  (serialize (slot-value msg 'right_shoulder) ostream)
  (serialize (slot-value msg 'left_shoulder) ostream)
  (serialize (slot-value msg 'right_elbow) ostream)
  (serialize (slot-value msg 'left_elbow) ostream)
  (serialize (slot-value msg 'torso) ostream)
  (serialize (slot-value msg 'left_hip) ostream)
  (serialize (slot-value msg 'right_hip) ostream)
  (serialize (slot-value msg 'left_knee) ostream)
  (serialize (slot-value msg 'right_knee) ostream)
  (serialize (slot-value msg 'left_foot) ostream)
  (serialize (slot-value msg 'right_foot) ostream)
)
(defmethod deserialize ((msg <Skeleton>) istream)
  "Deserializes a message object of type '<Skeleton>"
  (setf (ldb (byte 8 0) (slot-value msg 'userid)) (read-byte istream))
  (setf (ldb (byte 8 8) (slot-value msg 'userid)) (read-byte istream))
  (setf (ldb (byte 8 16) (slot-value msg 'userid)) (read-byte istream))
  (setf (ldb (byte 8 24) (slot-value msg 'userid)) (read-byte istream))
  (deserialize (slot-value msg 'head) istream)
  (deserialize (slot-value msg 'neck) istream)
  (deserialize (slot-value msg 'right_hand) istream)
  (deserialize (slot-value msg 'left_hand) istream)
  (deserialize (slot-value msg 'right_shoulder) istream)
  (deserialize (slot-value msg 'left_shoulder) istream)
  (deserialize (slot-value msg 'right_elbow) istream)
  (deserialize (slot-value msg 'left_elbow) istream)
  (deserialize (slot-value msg 'torso) istream)
  (deserialize (slot-value msg 'left_hip) istream)
  (deserialize (slot-value msg 'right_hip) istream)
  (deserialize (slot-value msg 'left_knee) istream)
  (deserialize (slot-value msg 'right_knee) istream)
  (deserialize (slot-value msg 'left_foot) istream)
  (deserialize (slot-value msg 'right_foot) istream)
  msg
)
(defmethod ros-datatype ((msg (eql '<Skeleton>)))
  "Returns string type for a message object of type '<Skeleton>"
  "nu_skeletonmsgs/Skeleton")
(defmethod md5sum ((type (eql '<Skeleton>)))
  "Returns md5sum for a message object of type '<Skeleton>"
  "4229bd747f63f2cf74f6314be0bb5c54")
(defmethod message-definition ((type (eql '<Skeleton>)))
  "Returns full string definition for message of type '<Skeleton>"
  (format nil "int32 userid~%nu_skeletonmsgs/SkeletonJoint head~%nu_skeletonmsgs/SkeletonJoint neck~%nu_skeletonmsgs/SkeletonJoint right_hand~%nu_skeletonmsgs/SkeletonJoint left_hand~%nu_skeletonmsgs/SkeletonJoint right_shoulder~%nu_skeletonmsgs/SkeletonJoint left_shoulder~%nu_skeletonmsgs/SkeletonJoint right_elbow~%nu_skeletonmsgs/SkeletonJoint left_elbow~%nu_skeletonmsgs/SkeletonJoint torso~%nu_skeletonmsgs/SkeletonJoint left_hip~%nu_skeletonmsgs/SkeletonJoint right_hip~%nu_skeletonmsgs/SkeletonJoint left_knee~%nu_skeletonmsgs/SkeletonJoint right_knee~%nu_skeletonmsgs/SkeletonJoint left_foot~%nu_skeletonmsgs/SkeletonJoint right_foot~%~%================================================================================~%MSG: nu_skeletonmsgs/SkeletonJoint~%geometry_msgs/Transform transform~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(defmethod serialization-length ((msg <Skeleton>))
  (+ 0
     4
     (serialization-length (slot-value msg 'head))
     (serialization-length (slot-value msg 'neck))
     (serialization-length (slot-value msg 'right_hand))
     (serialization-length (slot-value msg 'left_hand))
     (serialization-length (slot-value msg 'right_shoulder))
     (serialization-length (slot-value msg 'left_shoulder))
     (serialization-length (slot-value msg 'right_elbow))
     (serialization-length (slot-value msg 'left_elbow))
     (serialization-length (slot-value msg 'torso))
     (serialization-length (slot-value msg 'left_hip))
     (serialization-length (slot-value msg 'right_hip))
     (serialization-length (slot-value msg 'left_knee))
     (serialization-length (slot-value msg 'right_knee))
     (serialization-length (slot-value msg 'left_foot))
     (serialization-length (slot-value msg 'right_foot))
))
(defmethod ros-message-to-list ((msg <Skeleton>))
  "Converts a ROS message object to a list"
  (list '<Skeleton>
    (cons ':userid (userid-val msg))
    (cons ':head (head-val msg))
    (cons ':neck (neck-val msg))
    (cons ':right_hand (right_hand-val msg))
    (cons ':left_hand (left_hand-val msg))
    (cons ':right_shoulder (right_shoulder-val msg))
    (cons ':left_shoulder (left_shoulder-val msg))
    (cons ':right_elbow (right_elbow-val msg))
    (cons ':left_elbow (left_elbow-val msg))
    (cons ':torso (torso-val msg))
    (cons ':left_hip (left_hip-val msg))
    (cons ':right_hip (right_hip-val msg))
    (cons ':left_knee (left_knee-val msg))
    (cons ':right_knee (right_knee-val msg))
    (cons ':left_foot (left_foot-val msg))
    (cons ':right_foot (right_foot-val msg))
))
