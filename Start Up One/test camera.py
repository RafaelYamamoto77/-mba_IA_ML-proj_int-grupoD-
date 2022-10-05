import cv2
import pyautogui
import os

cam = cv2.VideoCapture(0)

cv2.namedWindow("camera")
xScreen, yScreen = pyautogui.size()
yCv = 0
xCv = 0
xPalm = 0
yPalm = 0
img_counter = 0
yFace = 0
xFace = 0
newX = 0
newY = 0
zCv = 0
pyautogui.moveTo(xScreen/2, yScreen/2)
currentMouseX, currentMouseY = pyautogui.position()

#xFist = 0
#yFist = 0
# face_cascade = cv2.CascadeClassifier(r'C:\Users\rafae\Desktop\Face\haarcascade_frontalface_default.xml') 
# eye_cascade = cv2.CascadeClassifier(r'C:\Users\rafae\Desktop\Face\haarcascade_eye.xml')  
palm_cascade = cv2.CascadeClassifier(r'C:\Users\rafae\Desktop\Face\rpalm.xml')
# fist_cascade = cv2.CascadeClassifier(r'C:\Users\rafae\Desktop\Face\fist.xml')
# temp_dir = r'C:\Users\rafae\Desktop\Face\temp'
# num_files = 0
# for files in os.listdir(temp_dir):
#     print(files)
#     num_files = len(files)

# print (num_files)
# print (temp_dir)
# while True:  
#     ret, img = cam.read()  
#     gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    
#     palm = palm_cascade.detectMultiScale(gray_img, 1.25, 4) 
  
#     for (x,y,w,h) in palm: 
#         cv2.rectangle(img,(x,y),(x+w,y+h),(255,255,0),2)  
#         cv2.putText(img, 'Palm', (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
#         rec_gray = gray_img[y:y+h, x:x+w] 
#         rec_color = img[y:y+h, x:x+w]
#         img_name = "cv2_frame_{}.png".format(num_files)
#         num_files = num_files+1
#         print(num_files)
#         cv2.imwrite(os.path.join(temp_dir,img_name),img)

#     cv2.imshow('Face Recognition',img) 
    
#     k = cv2.waitKey(30) & 0xff

#     if k == 27: 
#         print("saindo do treinamento")
#         break



while True:  
    ret, img = cam.read()  
    gray_img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    currentMouseX, currentMouseY = pyautogui.position()
    if (xCv == 0 and yCv == 0):
        print("Default values loaded")
        xCv,yCv,zCv = img.shape
        xPalm = xCv
        yPalm = xCv
    # face = face_cascade.detectMultiScale(gray_img, 1.25, 4) 
  
    # for (x,y,w,h) in face: 
    #     cv2.rectangle(img,(x,y),(x+w,y+h),(255,255,0),2)  
    #     cv2.putText(img, 'Face', (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
    #     rec_gray = gray_img[y:y+h, x:x+w] 
    #     rec_color = img[y:y+h, x:x+w]
        # if(xFace != x or yFace != y):
        #     print ("Face moved from x = {}; y = {}  to x = {}; y = {}".format(xFace, yFace, x, y))
        #     xFace = x
        #     yFace = y

    palm = palm_cascade.detectMultiScale(gray_img, 1.25, 4) 
  
    for (x,y,w,h) in palm: 
        cv2.rectangle(img,(x,y),(x+w,y+h),(255,255,0),2)  
        cv2.putText(img, 'Palm', (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
        cv2.circle(img, (int(x+w/2),int(y+h/2)), radius=5, color=(0, 0, 255), thickness=-1)
        rec_gray = gray_img[y:y+h, x:x+w] 
        rec_color = img[y:y+h, x:x+w]
        if(xPalm != x or yPalm != y):
            #print ("Palm moved from x = {}; y = {}  to x = {}; y = {}".format(xPalm, yPalm, x, y))
            
            movedX = xPalm-abs((x+(w/2))-xCv)
            movedY = yPalm-(y+(h/2))
            xPalm = abs((x+(w/2))-xCv)
            yPalm = (y+(h/2))
            print("moved:" ,movedX, movedY)
            #newX = currentMouseX - (movedX*xScreen/xCv)
            #newY = currentMouseY - (movedY*yScreen/yCv)
            newX = (abs((x+(w/2))-xCv)*xScreen/xCv)
            newY = (y+(h/2))*yScreen/yCv
            #print(newX, newY)
            pyautogui.moveTo(newX, newY)

    # fist = fist_cascade.detectMultiScale(gray_img, 1.25, 4) 
  
    # for (x,y,w,h) in fist: 
    #     cv2.rectangle(img,(x,y),(x+w,y+h),(255,255,0),2)  
    #     cv2.putText(img, 'Fist', (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
    #     rec_gray = gray_img[y:y+h, x:x+w] 
    #     rec_color = img[y:y+h, x:x+w]
    #     # if(xFist != fist.x or yFist != fist.y):
    #     #     print ("Fist moved from x = {}; y = {}  to x = {}; y = {}".format(xFist, yFist, x, y))
    #     #     xFist = x
    #     #     yFist = y   

    # eye = eye_cascade.detectMultiScale(gray_img, 1.25, 4)
    # for (x,y,w,h) in eye: 
    #    cv2.rectangle(img,(x,y),(x+w,y+h),(255,255,0),2)  
    #    cv2.putText(img, 'eye', (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.9, (36,255,12), 2)
    #    rec_gray = gray_img[y:y+h, x:x+w] 
    #    rec_color = img[y:y+h, x:x+w] 

    cv2.imshow('Face Recognition',img) 
    
    k = cv2.waitKey(30) & 0xff

    if k == 27: 
        break
  
cam.release() 
cv2.destroyAllWindows()