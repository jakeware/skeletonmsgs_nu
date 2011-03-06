; Auto-generated. Do not edit!


(in-package nu_skeletonmsgs-msg)


;//! \htmlinclude SkeletonJoint.msg.html

(defclass <SkeletonJoint> (ros-message)
  ((transform
    :reader transform-val
    :initarg :transform
    :type geometry_msgs-msg:<Transform>
    :initform (make-instance 'geometry_msgs-msg:<Transform>))
   (confidence
    :reader confidence-val
    :initarg :confidence
    :type float
    :initform 0.0))
)
(defmethod serialize ((msg <SkeletonJoint>) ostream)
  "Serializes a message object of type '<SkeletonJoint>"
  (serialize (slot-value msg 'transform) ostream)
  (let ((bits (roslisp-utils:encode-single-float-bits (slot-value msg 'confidence))))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream))
)
(defmethod deserialize ((msg <SkeletonJoint>) istream)
  "Deserializes a message object of type '<SkeletonJoint>"
  (deserialize (slot-value msg 'transform) istream)
  (let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(defmethod ros-datatype ((msg (eql '<SkeletonJoint>)))
  "Returns string type for a message object of type '<SkeletonJoint>"
  "nu_skeletonmsgs/SkeletonJoint")
(defmethod md5sum ((type (eql '<SkeletonJoint>)))
  "Returns md5sum for a message object of type '<SkeletonJoint>"
  "104ed9fc6089ba302b7abc1843aa95fe")
(defmethod message-definition ((type (eql '<SkeletonJoint>)))
  "Returns full string definition for message of type '<SkeletonJoint>"
  (format nil "geometry_msgs/Transform transform~%float32 confidence~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(defmethod serialization-length ((msg <SkeletonJoint>))
  (+ 0
     (serialization-length (slot-value msg 'transform))
     4
))
(defmethod ros-message-to-list ((msg <SkeletonJoint>))
  "Converts a ROS message object to a list"
  (list '<SkeletonJoint>
    (cons ':transform (transform-val msg))
    (cons ':confidence (confidence-val msg))
))
