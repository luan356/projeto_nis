<?php
namespace App\Services;

class NisGenerator {
    public function generateNis() {
        return str_pad(mt_rand(0, 99999999999), 11, '0', STR_PAD_LEFT);
    }
}
?>
