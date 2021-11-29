git clone https://hub.fastgit.org/bjjwwang/PaddleOCR -b ocr_test 
cd PaddleOCR

mkdir inference
wget https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar
tar xf ch_PP-OCRv2_det_infer.tar
wget https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_rec_infer.tar
tar xf ch_PP-OCRv2_rec_infer.tar
cd ..

