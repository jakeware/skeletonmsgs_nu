; Auto-generated. Do not edit!


(in-package nu_skeletonmsgs-msg)


;//! \htmlinclude Skeletons.msg.html

(defclass <Skeletons> (ros-message)
  ((header
    :reader header-val
    :initarg :header
    :type roslib-msg:<Header>
    :initform (make-instance 'roslib-msg:<Header>))
   (skeletons
    :reader skeletons-val
    :initarg :skeletons
    :type (vector nu_skeletonmsgs-msg:<Skeleton>)
   :initform (make-array 0 :element-type 'nu_skeletonmsgs-msg:<Skeleton> :initial-element (make-instance 'nu_skeletonmsgs-msg:<Skeleton>))))
)
(defmethod serialize ((msg <Skeletons>) ostream)
  "Serializes a message object of type '<Skeletons>"
  (serialize (slot-value msg 'header) ostream)
  (let ((__ros_arr_len (length (slot-value msg 'skeletons))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (serialize ele ostream))
    (slot-value msg 'skeletons))
)
(defmethod deserialize ((msg <Skeletons>) istream)
  "Deserializes a message object of type '<Skeletons>"
  (deserialize (slot-value msg 'header) istream)
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'skeletons) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'skeletons)))
      (dotimes (i __ros_arr_len)
        (setf (aref vals i) (make-instance 'nu_skeletonmsgs-msg:<Skeleton>))
(deserialize (aref vals i) istream))))
  msg
)
(defmethod ros-datatype ((msg (eql '<Skeletons>)))
  "Returns string type for a message object of type '<Skeletons>"
  "nu_skeletonmsgs/Skeletons")
(defmethod md5sum ((type (eql '<Skeletons>)))
  "Returns md5sum for a message object of type '<Skeletons>"
  "3d673547febdc9b93fc78fb55390c688")
(defmethod message-definition ((type (eql '<Skeletons>)))
  "Returns full string definition for message of type '<Skeletons>"
  (format nil "Header header~%nu_skeletonmsgs/Skeleton[] skeletons~%~%================================================================================~%MSG: roslib/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: nu_skeletonmsgs/Skeleton~%int32 userid~%nu_skeletonmsgs/SkeletonJoint head~%nu_skeletonmsgs/SkeletonJoint neck~%nu_skeletonmsgs/SkeletonJoint right_hand~%nu_skeletonmsgs/SkeletonJoint left_hand~%nu_skeletonmsgs/SkeletonJoint right_shoulder~%nu_skeletonmsgs/SkeletonJoint left_shoulder~%nu_skeletonmsgs/SkeletonJoint right_elbow~%nu_skeletonmsgs/SkeletonJoint left_elbow~%nu_skeletonmsgs/SkeletonJoint torso~%nu_skeletonmsgs/SkeletonJoint left_hip~%nu_skeletonmsgs/SkeletonJoint right_hip~%nu_skeletonmsgs/SkeletonJoint left_knee~%nu_skeletonmsgs/SkeletonJoint right_knee~%nu_skeletonmsgs/SkeletonJoint left_foot~%nu_skeletonmsgs/SkeletonJoint right_foot~%~%================================================================================~%MSG: nu_skeletonmsgs/SkeletonJoint~%geometry_msgs/Transform transform~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(defmethod serialization-length ((msg <Skeletons>))
  (+ 0
     (serialization-length (slot-value msg 'header))
     4 (reduce #'+ (slot-value msg 'skeletons) :key #'(lambda (ele) (declare (ignorable ele)) (+ (serialization-length ele))))
))
(defmethod ros-message-to-list ((msg <Skeletons>))
  "Converts a ROS message object to a list"
  (list '<Skeletons>
    (cons ':header (header-val msg))
    (cons ':skeletons (skeletons-val msg))
))
