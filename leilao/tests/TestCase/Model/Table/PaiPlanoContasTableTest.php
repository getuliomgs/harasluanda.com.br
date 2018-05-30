<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\PaiPlanoContasTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\PaiPlanoContasTable Test Case
 */
class PaiPlanoContasTableTest extends TestCase
{

    /**
     * Test subject
     *
     * @var \App\Model\Table\PaiPlanoContasTable
     */
    public $PaiPlanoContas;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.pai_plano_contas',
        'app.plano_contas',
        'app.condominios'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::exists('PaiPlanoContas') ? [] : ['className' => 'App\Model\Table\PaiPlanoContasTable'];
        $this->PaiPlanoContas = TableRegistry::get('PaiPlanoContas', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->PaiPlanoContas);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
