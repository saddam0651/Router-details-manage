import numpy as np
import cv2

img = np.zeros((400, 400, 3), dtype="uint8")

# circle
cv2.circle(img, (185, 200), 120, (255, 0, 0), 3)

# hexagon
pts = np.array([[30, 200], [90, 30],
                [280, 30], [350, 200],
                [280, 350], [90, 350]],
               np.int32)
cv2.polylines(img, [pts], True, (0, 255, 0), 3)

# square
cv2.line(img, (185, 90), (90, 200), (0, 0, 255), 3)
cv2.line(img, (90, 200), (185, 310), (0, 0, 255), 3)
cv2.line(img, (185, 310), (280, 200), (0, 0, 255), 3)
cv2.line(img, (280, 200), (185, 90), (0, 0, 255), 3)

cv2.imshow('dark', img)
cv2.waitKey(0)
cv2.destroyAllWindows()