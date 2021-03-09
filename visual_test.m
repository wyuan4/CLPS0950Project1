function [table_image] = visual_test(p_hand1, p_hand2, mc1, mc2)

%assigns appropriate cards for player one's hand%
    for i = 1:5
        table_image= subplot(3,5,i);
        imagesc(img_retrieve(p_hand1(i)))
        axis off
        axis image
    end
    %assigns appropriate cards for player two's hand%
    for i = 1:5
        table_image = subplot(3,5,i+10);
        imagesc(img_retrieve(p_hand2(i)))
        axis off
        axis image
    end
    %assigns appropriate cards for middle card1%
    table_image = subplot(3,5,7)
    imagesc(img_retrieve(mc1))
    axis off
    axis image
    
    %assigns appropriate cards for middle card1%
    table_image = subplot(3,5,9)
    imagesc(img_retrieve(mc2))
    axis off
    axis image
end
    