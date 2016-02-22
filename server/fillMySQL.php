<?php
require ("connectDB.php");
function getContentFromUrl($url)
	{
		// create curl resource
        $ch = curl_init();

        // set url
        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        // $output contains the output string
        $output = curl_exec($ch);

        // close curl resource to free up system resources
        curl_close($ch);   
		return $output;
	}
	/**
	* @return object
	**/
	function getXssObject()
	{
		
		$xmlRss = getContentFromUrl('https://meetings.vtools.ieee.org/meetings/xml/-300/300/desc/8/0/YOUNG%20PROFESSIONALS');
		if ($xmlRss === false) {
			throw new Exception("Unable to get the RSS feed");
		}
		
		$xmlDoc = new SimpleXmlElement($xmlRss, LIBXML_NOCDATA);
		if (!property_exists($xmlDoc, 'meeting')) {
			throw new Exception("Unable to parse the XML");
		}

		return $xmlDoc;
	}
	
	// Main
	try 
	{
		$rss = getXssObject();
	}
	catch (Exception $e)
	{
		echo 'Impossible to download the xml file';
		exit();
	}
       
        
        foreach ($rss->meeting as $meeting)
	{
          // echo date_format($meeting->start_time, '%Y-%m-%d %H:%i:%s') ;
           
          
            $id=$meeting->id;
            $title=$meeting->title;
            $start_time=$meeting->start_time;
            $end_time=$meeting->end_time;
            $revision_number=$meeting->revision_number;
            $uid=$meeting->uid;
            $desc=$meeting->description->text;
            $keywords=$meeting->keywords;
            $category=$meeting->category;
            $city=$meeting->location->city;
            $state=$meeting->location->state;
            $country=$meeting->location->country;
            $section=$meeting->primary_unit->parents->parent->name;
            $longitude=$meeting->location->longitude;
            $latitude=$meeting->location->latitude;
        
            
       //check if the event already exists
      $stmt2 = $pdo->prepare("SELECT revision_number FROM meetings WHERE id = :id");

      $stmt2->bindValue('id', $id);
      $stmt2->execute();
      $nb = $stmt2->rowCount();
       if($nb == 0) {     
        $stmt = $pdo->prepare("INSERT INTO meetings (id, title,start_time, end_time, revision_number,uid, description, keywords, category, city,
            state,country,section, longitude,latitude) VALUES (:id, :title,:start_time, :end_time, :revision_number,:uid, :desc, :keywords, :category, :city,
            :state,:country,:section, :longitude,:latitude)");
        $stmt->bindParam(':id',$id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':start_time', $start_time);
        $stmt->bindParam(':end_time', $end_time);
        $stmt->bindParam(':revision_number', $revision_number);
        $stmt->bindParam(':uid', $uid);
        $stmt->bindParam(':desc', $desc);
        $stmt->bindParam(':keywords', $keywords);
        $stmt->bindParam(':category', $category);
        $stmt->bindParam(':city',$city);
        $stmt->bindParam(':state',$state);
        $stmt->bindParam(':country',$country);
        $stmt->bindParam(':section',$section);
        $stmt->bindParam(':longitude',$longitude);
        $stmt->bindParam(':latitude',$latitude);
        $stmt->execute();
       }
}
        
        
?>
