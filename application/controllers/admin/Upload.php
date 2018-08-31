<?php

require_once CONTROLLER_PATH . 'Controller.php';

/**
 * Class Upload
 *
 * @author WangNan <jadesouth@aliyun.com>
 * @date   2018-08-29 22:46:56
 */
class Upload extends Controller
{
    public function icon()
    {
        $config['upload_path'] = UPLOAD_PATH . 'icons' . DIRECTORY_SEPARATOR;
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 100;
        $config['max_width'] = 1024;
        $config['max_height'] = 768;
        $config['encrypt_name'] = true;
        $this->load->library('upload', $config);
        if (! $this->upload->do_upload('icon_file')) {
            return self::responseError($this->upload->display_errors());
        } else {
            $fileName = $this->upload->data()['file_name'];
            $path = 'resources/uploads/icons/' . $fileName;
            $url = base_url() . $path;
            return self::responseOK(['path' => $path, 'url' => $url]);
        }
    }

    public function image()
    {
        $config['upload_path'] = UPLOAD_PATH . 'images' . DIRECTORY_SEPARATOR;
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 100;
        $config['max_width'] = 1024;
        $config['max_height'] = 768;
        $config['encrypt_name'] = true;
        $this->load->library('upload', $config);
        if (! $this->upload->do_upload('image_file')) {
            return self::responseError($this->upload->display_errors());
        } else {
            $fileName = $this->upload->data()['file_name'];
            $path = 'resources/uploads/images/' . $fileName;
            $url = base_url() . $path;
            return self::responseOK(['path' => $path, 'url' => $url]);
        }
    }
}