<?php 
/**
 * 관리자 필수 클래스
 */
abstract class Admin extends Action
{
  public $DB;
	public function __construct ($controller)
  {
    // DB setting
    $this->DB = new MySqli(DBHOST,DBUSER,DBPASS,DB);
    $this->DB->set_charset("utf8");
    if($this->DB->connect_error) {
      printf("Connect failed: %s\n", $this->DB->connect_error);
      exit();
    }    
    // Level setting
    $Level = $_SESSION['secure']['Level'];
    if(array_key_exists(1,$Level) || array_key_exists(2,$Level))
    {
      return TRUE;
    }
    else
    {
      return header('Location:?mod=Site&act=Login');
    }
  }

  /**
   * [Query mysqli query + error]
   * @param [type] $sql [sql 문]
   */
  protected function Query($sql)
  {
    if(!$this->DB->query($sql))
    {
      die("SQL Error : ".$this->DB->error);
    }
    else
    {
      return $this->DB->query($sql);
    }
  }

  /**
   * [getList 전체]
   * @param  [string] $table_name [테이블명 !필수]
   * @param  [sql]    $where      [WHERE 조건문 !필수]
   * @param  [array]  $offset     [Limit 인수]
   * @return [array]              [연관배열]
   */
  protected function Select_All($table_name,$where,$offset)
  {
    $sql = "SELECT * FROM {$table_name}";
        
    if(!empty($where))
    {
      $sql .= " WHERE {$where}";  
    }

    if(!empty($offset))
    {
      $sql .= " LIMIT {$offset[0]},{$offset[1]}";  
    }
    $result = $this->Query($sql);

    while($row = $result->fetch_assoc())
    {
      $list[] = $row;
    }
    return $list;
  }

  /**
   * [Select 셀렉트]
   * @param [string] $table_name  [테이블명 !필수]
   * @param [string] $where       [where 문]
   * @param [array]  $offset      [limit 인수]
   * @param array    $sort        [정렬]
   * @param array    $columns     [컬럼명]
   */
  protected function Select($table_name,$where,$offset,$sort=array(),$columns=array())
  {
    if(count($columns)>0)
    {
      $sql = "SELECT ";
      for($i=0;$i<count($columns);$i++) {
        if($i == (count($columns)-1))
        {
          $sql .= $columns[$i];
        }
        else
        {
          $sql .= $columns[$i].','; 
        }
      }
      $sql .= " FROM {$table_name}";
    }
    else
    {
      $sql = "SELECT * FROM {$table_name}";
    }
    
    if(!empty($where))
    {
      $sql .= " WHERE {$where}";  
    }

    if($sort=='DESC') $sql .= " ORDER BY DESC";

    if(!empty($offset))
    {
      $sql .= " LIMIT {$offset[0]},{$offset[1]}";  
    }
    return $this->Query($sql);
  }

  /**
   * [update 수정]
   * @param  [type] $tableName [테이블 명 !필수]
   * @param  [type] $data      [데이터 배열 !필수]
   * @param  [type] $where     [sql 조건]
   */
  protected function update($tableName,$data,$where)
  {
    $sql = "UPDATE {$tableName} SET ";
    for ($i=0; $i < count($data); $i++) { 
      list($key,$value) = each($data);
      if($key=='mod' || $key=='act') continue;
      $i == (count($data)-1) ? $sql .= "{$key} = '{$value}' " : $sql .= "{$key} = '{$value}',";
      if(!empty($where)) $sql .= "WHERE {$where}";
    }
    $this->Query($sql);
  }

  /**
   * [Close mysqli close]
   */
  public function __destruct()
  {
    $this->DB->close();
  }

  /**
  * [getRequestMethods POST|GET 중 기본요청 설정]
  * @return [const] [Request 클래스가 관리함]
  */
	public function getRequestMethods ()
  {
    return REQ_POST;
  }

  /**
   * [isSecure 안전제일]
   * @return boolean [안전췠크~]
   */
  public function isSecure() {
    return true;  
  }
}







 ?>