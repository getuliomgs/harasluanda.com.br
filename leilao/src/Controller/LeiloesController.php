<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\I18n\Time;

/**
 * Leiloes Controller
 *
 * @property \App\Model\Table\AnimaisTable $Leiloes
 */
class LeiloesController extends AppController
{

    public $components = array('animais');
    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        
        
    }

/**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function indexUser()
    {
        
        $flagLeilao = array();
        $time = Time::now();
        
        $listarAnimais = $this->animais->listarAnimais();
        foreach ($listarAnimais as $key => $value) {
                
            if($time > $value->data_leilao_ini){
                if($time < $value->data_leilao_fim){
                    $flagLeilao[$key] = "ABE";
                }else{
                    $flagLeilao[$key] = "FEC";
                }
            }elseif($time > $value->data_leilao_fim){
                $flagLeilao[$key] = "FEC";
            }else{
                $flagLeilao[$key] = "EMB";
            }
        }

        $this->set(compact('listarAnimais','flagLeilao'));
        $this->set('_serialize', [$listarAnimais, $flagLeilao]);
    }

}
