; Auto-generated. Do not edit!


(in-package m3_client-srv)


;//! \htmlinclude M3HumanoidStatus-request.msg.html

(defclass <M3HumanoidStatus-request> (ros-message)
  ((chain
    :reader chain-val
    :initarg :chain
    :type fixnum
    :initform 0))
)
(defmethod serialize ((msg <M3HumanoidStatus-request>) ostream)
  "Serializes a message object of type '<M3HumanoidStatus-request>"
    (write-byte (ldb (byte 8 0) (slot-value msg 'chain)) ostream)
)
(defmethod deserialize ((msg <M3HumanoidStatus-request>) istream)
  "Deserializes a message object of type '<M3HumanoidStatus-request>"
  (setf (ldb (byte 8 0) (slot-value msg 'chain)) (read-byte istream))
  msg
)
(defmethod ros-datatype ((msg (eql '<M3HumanoidStatus-request>)))
  "Returns string type for a service object of type '<M3HumanoidStatus-request>"
  "m3_client/M3HumanoidStatusRequest")
(defmethod md5sum ((type (eql '<M3HumanoidStatus-request>)))
  "Returns md5sum for a message object of type '<M3HumanoidStatus-request>"
  "7ccd98e6ad058fad2be7361cfc7d0728")
(defmethod message-definition ((type (eql '<M3HumanoidStatus-request>)))
  "Returns full string definition for message of type '<M3HumanoidStatus-request>"
  (format nil "uint8 chain~%~%"))
(defmethod serialization-length ((msg <M3HumanoidStatus-request>))
  (+ 0
     1
))
(defmethod ros-message-to-list ((msg <M3HumanoidStatus-request>))
  "Converts a ROS message object to a list"
  (list '<M3HumanoidStatus-request>
    (cons ':chain (chain-val msg))
))
;//! \htmlinclude M3HumanoidStatus-response.msg.html

(defclass <M3HumanoidStatus-response> (ros-message)
  ((base
    :reader base-val
    :initarg :base
    :type m3_client-msg:<M3BaseStatus>
    :initform (make-instance 'm3_client-msg:<M3BaseStatus>))
   (joint_names
    :reader joint_names-val
    :initarg :joint_names
    :type (vector string)
   :initform (make-array 0 :element-type 'string :initial-element ""))
   (torque
    :reader torque-val
    :initarg :torque
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (torquedot
    :reader torquedot-val
    :initarg :torquedot
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (theta
    :reader theta-val
    :initarg :theta
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (thetadot
    :reader thetadot-val
    :initarg :thetadot
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (thetadotdot
    :reader thetadotdot-val
    :initarg :thetadotdot
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (completed_spline_idx
    :reader completed_spline_idx-val
    :initarg :completed_spline_idx
    :type integer
    :initform 0)
   (end_pos
    :reader end_pos-val
    :initarg :end_pos
    :type (vector float)
   :initform (make-array 3 :element-type 'float :initial-element 0.0))
   (end_rot
    :reader end_rot-val
    :initarg :end_rot
    :type (vector float)
   :initform (make-array 9 :element-type 'float :initial-element 0.0))
   (J
    :reader J-val
    :initarg :J
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (G
    :reader G-val
    :initarg :G
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (end_twist
    :reader end_twist-val
    :initarg :end_twist
    :type (vector float)
   :initform (make-array 6 :element-type 'float :initial-element 0.0))
   (pwm_cmd
    :reader pwm_cmd-val
    :initarg :pwm_cmd
    :type (vector float)
   :initform (make-array 0 :element-type 'float :initial-element 0.0))
   (motor_enabled
    :reader motor_enabled-val
    :initarg :motor_enabled
    :type boolean
    :initform nil))
)
(defmethod serialize ((msg <M3HumanoidStatus-response>) ostream)
  "Serializes a message object of type '<M3HumanoidStatus-response>"
  (serialize (slot-value msg 'base) ostream)
  (let ((__ros_arr_len (length (slot-value msg 'joint_names))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((__ros_str_len (length ele)))
    (write-byte (ldb (byte 8 0) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_str_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_str_len) ostream))
  (map nil #'(lambda (c) (write-byte (char-code c) ostream)) ele))
    (slot-value msg 'joint_names))
  (let ((__ros_arr_len (length (slot-value msg 'torque))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'torque))
  (let ((__ros_arr_len (length (slot-value msg 'torquedot))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'torquedot))
  (let ((__ros_arr_len (length (slot-value msg 'theta))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'theta))
  (let ((__ros_arr_len (length (slot-value msg 'thetadot))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'thetadot))
  (let ((__ros_arr_len (length (slot-value msg 'thetadotdot))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'thetadotdot))
    (write-byte (ldb (byte 8 0) (slot-value msg 'completed_spline_idx)) ostream)
  (write-byte (ldb (byte 8 8) (slot-value msg 'completed_spline_idx)) ostream)
  (write-byte (ldb (byte 8 16) (slot-value msg 'completed_spline_idx)) ostream)
  (write-byte (ldb (byte 8 24) (slot-value msg 'completed_spline_idx)) ostream)
    (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))(slot-value msg 'end_pos))
    (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))(slot-value msg 'end_rot))
  (let ((__ros_arr_len (length (slot-value msg 'J))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'J))
  (let ((__ros_arr_len (length (slot-value msg 'G))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'G))
    (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))(slot-value msg 'end_twist))
  (let ((__ros_arr_len (length (slot-value msg 'pwm_cmd))))
    (write-byte (ldb (byte 8 0) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 8) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 16) __ros_arr_len) ostream)
    (write-byte (ldb (byte 8 24) __ros_arr_len) ostream))
  (map nil #'(lambda (ele) (let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (write-byte (ldb (byte 8 0) bits) ostream)
    (write-byte (ldb (byte 8 8) bits) ostream)
    (write-byte (ldb (byte 8 16) bits) ostream)
    (write-byte (ldb (byte 8 24) bits) ostream)))
    (slot-value msg 'pwm_cmd))
    (write-byte (ldb (byte 8 0) (if (slot-value msg 'motor_enabled) 1 0)) ostream)
)
(defmethod deserialize ((msg <M3HumanoidStatus-response>) istream)
  "Deserializes a message object of type '<M3HumanoidStatus-response>"
  (deserialize (slot-value msg 'base) istream)
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'joint_names) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'joint_names)))
      (dotimes (i __ros_arr_len)
(let ((__ros_str_len 0))
    (setf (ldb (byte 8 0) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_str_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_str_len) (read-byte istream))
    (setf (aref vals i) (make-string __ros_str_len))
    (dotimes (__ros_str_idx __ros_str_len msg)
      (setf (char (aref vals i) __ros_str_idx) (code-char (read-byte istream))))))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'torque) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'torque)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'torquedot) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'torquedot)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'theta) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'theta)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'thetadot) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'thetadot)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'thetadotdot) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'thetadotdot)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (setf (ldb (byte 8 0) (slot-value msg 'completed_spline_idx)) (read-byte istream))
  (setf (ldb (byte 8 8) (slot-value msg 'completed_spline_idx)) (read-byte istream))
  (setf (ldb (byte 8 16) (slot-value msg 'completed_spline_idx)) (read-byte istream))
  (setf (ldb (byte 8 24) (slot-value msg 'completed_spline_idx)) (read-byte istream))
  (setf (slot-value msg 'end_pos) (make-array 3))
  (let ((vals (slot-value msg 'end_pos)))
    (dotimes (i 3)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (setf (slot-value msg 'end_rot) (make-array 9))
  (let ((vals (slot-value msg 'end_rot)))
    (dotimes (i 9)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'J) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'J)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'G) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'G)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (setf (slot-value msg 'end_twist) (make-array 6))
  (let ((vals (slot-value msg 'end_twist)))
    (dotimes (i 6)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (let ((__ros_arr_len 0))
    (setf (ldb (byte 8 0) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 8) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 16) __ros_arr_len) (read-byte istream))
    (setf (ldb (byte 8 24) __ros_arr_len) (read-byte istream))
    (setf (slot-value msg 'pwm_cmd) (make-array __ros_arr_len))
    (let ((vals (slot-value msg 'pwm_cmd)))
      (dotimes (i __ros_arr_len)
(let ((bits 0))
    (setf (ldb (byte 8 0) bits) (read-byte istream))
    (setf (ldb (byte 8 8) bits) (read-byte istream))
    (setf (ldb (byte 8 16) bits) (read-byte istream))
    (setf (ldb (byte 8 24) bits) (read-byte istream))
    (setf (aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (setf (slot-value msg 'motor_enabled) (not (zerop (read-byte istream))))
  msg
)
(defmethod ros-datatype ((msg (eql '<M3HumanoidStatus-response>)))
  "Returns string type for a service object of type '<M3HumanoidStatus-response>"
  "m3_client/M3HumanoidStatusResponse")
(defmethod md5sum ((type (eql '<M3HumanoidStatus-response>)))
  "Returns md5sum for a message object of type '<M3HumanoidStatus-response>"
  "7ccd98e6ad058fad2be7361cfc7d0728")
(defmethod message-definition ((type (eql '<M3HumanoidStatus-response>)))
  "Returns full string definition for message of type '<M3HumanoidStatus-response>"
  (format nil "M3BaseStatus base~%string[] joint_names		# not implemented~%float32[] torque 		#(mNm)~%float32[] torquedot 		#(mNm)    ~%float32[] theta 		#(Rad)~%float32[] thetadot 		#(Rad/s)~%float32[] thetadotdot 		#(Rad/s^2)~%int32 completed_spline_idx 	#Last spline command completed	~%float32[3] end_pos 		#3x1 position of End frame in Base coords (x,y,z)~%float32[9] end_rot		#3x3 Rotation Mtx~%float32[] J			#6xndof Jacobian Frame ndof+1 to Frame 0~%float32[] G			#ndofx1 joint torque gravity vector mN*m~%float32[6] end_twist		#6x1 twist at Frame ndof+1~%float32[] pwm_cmd		#Current PWM command to motor~%bool motor_enabled		# not implemented~%================================================================================~%MSG: m3_client/M3BaseStatus~%string name~%uint8 state~%int64 timestamp~%string rate~%string version~%~%~%~%"))
(defmethod serialization-length ((msg <M3HumanoidStatus-response>))
  (+ 0
     (serialization-length (slot-value msg 'base))
     4 (reduce #'+ (slot-value msg 'joint_names) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4 (length ele))))
     4 (reduce #'+ (slot-value msg 'torque) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'torquedot) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'theta) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'thetadot) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'thetadotdot) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4
     0 (reduce #'+ (slot-value msg 'end_pos) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     0 (reduce #'+ (slot-value msg 'end_rot) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'J) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'G) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     0 (reduce #'+ (slot-value msg 'end_twist) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     4 (reduce #'+ (slot-value msg 'pwm_cmd) :key #'(lambda (ele) (declare (ignorable ele)) (+ 4)))
     1
))
(defmethod ros-message-to-list ((msg <M3HumanoidStatus-response>))
  "Converts a ROS message object to a list"
  (list '<M3HumanoidStatus-response>
    (cons ':base (base-val msg))
    (cons ':joint_names (joint_names-val msg))
    (cons ':torque (torque-val msg))
    (cons ':torquedot (torquedot-val msg))
    (cons ':theta (theta-val msg))
    (cons ':thetadot (thetadot-val msg))
    (cons ':thetadotdot (thetadotdot-val msg))
    (cons ':completed_spline_idx (completed_spline_idx-val msg))
    (cons ':end_pos (end_pos-val msg))
    (cons ':end_rot (end_rot-val msg))
    (cons ':J (J-val msg))
    (cons ':G (G-val msg))
    (cons ':end_twist (end_twist-val msg))
    (cons ':pwm_cmd (pwm_cmd-val msg))
    (cons ':motor_enabled (motor_enabled-val msg))
))
(defmethod service-request-type ((msg (eql 'M3HumanoidStatus)))
  '<M3HumanoidStatus-request>)
(defmethod service-response-type ((msg (eql 'M3HumanoidStatus)))
  '<M3HumanoidStatus-response>)
(defmethod ros-datatype ((msg (eql 'M3HumanoidStatus)))
  "Returns string type for a service object of type '<M3HumanoidStatus>"
  "m3_client/M3HumanoidStatus")