<?php
include "views/header.php";
?>
<!<!-- Main Container -->
<div class="Container">
    <!<!-- Banner -->
    <div class="banner">
        <div id="banner-propic">
            
        </div>
        <div id="banner-name">
            <?= $_SESSION['firstname']." ".$_SESSION['lastname']; ?>
        </div>
    </div>
    <!<!-- Post -->
    <div class="post-container">
        <form class="post-form" action="models/add_post.php" method="POST">
            <textarea id="post-area" name="post-area" placeholder="What's on your mind"></textarea>
            <input type="submit" id="post-btn"; value="post";>
        </form>
        <div class="account-posts">
        <?php include 'models/load_account_posts.php';
        ?>    
        </div>
    </div>  
</div>
<?php
include "views/footer.php";