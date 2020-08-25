;; Auto-generated. Do not edit!


(when (boundp 'service_exercise::BB8CustomServiceMessage)
  (if (not (find-package "SERVICE_EXERCISE"))
    (make-package "SERVICE_EXERCISE"))
  (shadow 'BB8CustomServiceMessage (find-package "SERVICE_EXERCISE")))
(unless (find-package "SERVICE_EXERCISE::BB8CUSTOMSERVICEMESSAGE")
  (make-package "SERVICE_EXERCISE::BB8CUSTOMSERVICEMESSAGE"))
(unless (find-package "SERVICE_EXERCISE::BB8CUSTOMSERVICEMESSAGEREQUEST")
  (make-package "SERVICE_EXERCISE::BB8CUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "SERVICE_EXERCISE::BB8CUSTOMSERVICEMESSAGERESPONSE")
  (make-package "SERVICE_EXERCISE::BB8CUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass service_exercise::BB8CustomServiceMessageRequest
  :super ros::object
  :slots (_side _repetitions ))

(defmethod service_exercise::BB8CustomServiceMessageRequest
  (:init
   (&key
    ((:side __side) 0.0)
    ((:repetitions __repetitions) 0)
    )
   (send-super :init)
   (setq _side (float __side))
   (setq _repetitions (round __repetitions))
   self)
  (:side
   (&optional __side)
   (if __side (setq _side __side)) _side)
  (:repetitions
   (&optional __repetitions)
   (if __repetitions (setq _repetitions __repetitions)) _repetitions)
  (:serialization-length
   ()
   (+
    ;; float64 _side
    8
    ;; int32 _repetitions
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _side
       (sys::poke _side (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _repetitions
       (write-long _repetitions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _side
     (setq _side (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _repetitions
     (setq _repetitions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_exercise::BB8CustomServiceMessageResponse
  :super ros::object
  :slots (_success ))

(defmethod service_exercise::BB8CustomServiceMessageResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass service_exercise::BB8CustomServiceMessage
  :super ros::object
  :slots ())

(setf (get service_exercise::BB8CustomServiceMessage :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get service_exercise::BB8CustomServiceMessage :datatype-) "service_exercise/BB8CustomServiceMessage")
(setf (get service_exercise::BB8CustomServiceMessage :request) service_exercise::BB8CustomServiceMessageRequest)
(setf (get service_exercise::BB8CustomServiceMessage :response) service_exercise::BB8CustomServiceMessageResponse)

(defmethod service_exercise::BB8CustomServiceMessageRequest
  (:response () (instance service_exercise::BB8CustomServiceMessageResponse :init)))

(setf (get service_exercise::BB8CustomServiceMessageRequest :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get service_exercise::BB8CustomServiceMessageRequest :datatype-) "service_exercise/BB8CustomServiceMessageRequest")
(setf (get service_exercise::BB8CustomServiceMessageRequest :definition-)
      "float64 side
int32 repetitions
---
bool success

")

(setf (get service_exercise::BB8CustomServiceMessageResponse :md5sum-) "b78c0d1a37ffcec6adef7714dda05daa")
(setf (get service_exercise::BB8CustomServiceMessageResponse :datatype-) "service_exercise/BB8CustomServiceMessageResponse")
(setf (get service_exercise::BB8CustomServiceMessageResponse :definition-)
      "float64 side
int32 repetitions
---
bool success

")



(provide :service_exercise/BB8CustomServiceMessage "b78c0d1a37ffcec6adef7714dda05daa")


