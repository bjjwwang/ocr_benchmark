
cd pdserving
wget https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_det_infer.tar
tar xf ch_PP-OCRv2_det_infer.tar
wget https://paddleocr.bj.bcebos.com/PP-OCRv2/chinese/ch_PP-OCRv2_rec_infer.tar
tar xf ch_PP-OCRv2_rec_infer.tar

python3.7 -m paddle_serving_client.convert --dirname ch_PP-OCRv2_det_infer --model_filename inference.pdmodel --params_filename inference.pdiparams --serving_server det_server --serving_client det_client
python3.7 -m paddle_serving_client.convert --dirname ch_PP-OCRv2_rec_infer --model_filename inference.pdmodel --params_filename inference.pdiparams --serving_server rec_server --serving_client rec_client
cd ..

