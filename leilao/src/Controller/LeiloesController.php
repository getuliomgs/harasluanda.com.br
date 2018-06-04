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
     * Index User method
     *
     * @return \Cake\Network\Response|null
     */
    public function indexUser()
    {
        
        $flagLeilao = array();
        $time = Time::now();
        $listarAnimais = $this->animais->listarAnimais();
        foreach ($listarAnimais as $key => $value) {
            $flagLeilao[$key] = $this->animais->flagLeilao($value->data_leilao_ini, $value->data_leilao_fim, $time);
        }

        $this->set(compact('listarAnimais','flagLeilao'));
        $this->set('_serialize', [$listarAnimais, $flagLeilao]);
    }

    

}
