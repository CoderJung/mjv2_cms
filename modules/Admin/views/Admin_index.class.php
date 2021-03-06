<?php

class Admin_index extends View
{
    public $left_var;    
    public $left_tpl = 'left.tpl';

    public $body_var;
    public $body_tpl = 'dashboard.tpl';
    
    public $common_var;
    public $renderer;   

    function & execute (&$controller, &$request, &$user)
    {   
        /** 좌측 렌덜러 **/
        $Left = new Renderer;
        $Left->setMode(2);
        $Left->setTemplate($this->left_tpl);

        /** 우측 렌덜러 **/
        $Body = new Renderer;
        $Body->setMode(2);
        $Body->setTemplate($this->body_tpl);
        $Body->setArray($this->body_var);
        // 현재 액션 url
        $Body->setAttribute('current_url',$controller->mojavi['current_action_path']);     
        
        
        /** 모달 렌덜러 **/
        $errors = "<ol>";
        foreach ($request->getErrors() as $key => $value) {
            $errors .= "<li>".$value."</li>";
        }
        $errors .= "</ol>";
        $Modal = new Renderer;
        $Modal->setMode(2);
        $Modal->setTemplate('modal.tpl');
        $Modal->setAttribute('errors',$errors);

        /** 최종 렌덜러 **/
        $this->renderer = new Renderer;
        $this->renderer->setTemplate(BASE_DIR.'layout/AdminLayout.tpl');
        $this->renderer->setArray($this->common_var);
        # 기본 변수 셋팅
        $this->renderer->setAttribute('action_name',$controller->currentAction);
        $this->renderer->setAttribute('BASE_URL',BASE_URL);
        $this->renderer->setAttribute('STATIC_DIR',STATIC_DIR);
        // 모달
        if($request->getErrors())
            $this->renderer->setAttribute('modal',$Modal->fetchResult($controller));
        // 좌측
        $this->renderer->setAttribute('LEFT', $Left->fetchResult($controller));
        // 우측
        $this->renderer->setAttribute('BODY', $Body->fetchResult($controller));


        
    }
} 

?>