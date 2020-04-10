function save_fig(fig,name,close_fig);

	          print(fig, '-depsc2','-r300',['eps/',name,'.eps']);
	          print(fig, '-djpeg',['jpg/',name,'.jpg']);
              if (exist('octave','var')==0)
                saveas(fig,['fig/',name,'.fig'],'fig');
              end
              if (close_fig)
                  close(fig);
              end
end
